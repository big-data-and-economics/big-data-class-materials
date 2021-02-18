
# Setup ----
# Load packages
library(pacman)
p_load(tidyverse, lfe)
# Load 'diamonds' dataset
data("diamonds")
diamond_df = diamonds %>% as_tibble()

# Testing heteroskedasticity ----

# Step 1: Estimate the effect of clarity, cut, and carat on price
reg_main = lm(price ~ carat + cut + clarity, data = diamond_df)
reg_main %>% summary()

# Question: Does it look like we have heteroskedasticity?

# Add OLS residuals to the dataset
diamond_df$e_ols = residuals(reg_main)
# Plot the residuals against the carat
ggplot(data = diamond_df, aes(x = carat, y = e_ols)) +
  geom_point(size = 0.1) +
  xlab("Carats") +
  ylab("OLS residual") +
  theme_minimal()

# B-P test: 
# 1. Regress squared OLS residuals on the expl. variables.
# 2. Calculate the LM test stat.
# BP reg.
reg_bp = lm(I(e_ols^2) ~ carat + cut + clarity, data = diamond_df)
summary(reg_bp)
# LM test stat
lm_bp = 53940 * summary(reg_bp)$r.squared 
# BP p-value
pchisq(q = lm_bp, df = 12, lower.tail = F)
# Conclude: Reject null hyp. (at 5% level); conclude sign. evid. of heterosk.

# Now White test:
# 1. Regress squared OLS residuals on the expl. variables, squares, and interact.
# 2. Calculate the LM test stat.
# BP reg.
reg_white = lm(
  I(e_ols^2) ~
    carat + cut + clarity +
    I(carat^2) + carat:cut + carat:clarity + cut:clarity,
    data = diamond_df)
summary(reg_white)
# White LM test stat
lm_white = 53940 * summary(reg_white)$r.squared
# White p-value
pchisq(q = lm_white, df = 52, lower.tail = F)
# Conclude: Reject null hyp. (at 5% level); conclude sign. evid. of heterosk.

# Compare het-robust SEs to plain OLS SEs
felm(price ~ carat + cut + clarity, data = diamond_df) %>% summary(robust = T)
felm(price ~ carat + cut + clarity, data = diamond_df) %>% summary(robust = F)


# Interpreting coefficients ----

# Create binary variable for premium or better
diamond_df = diamond_df %>% mutate(premium_plus = 1 * (cut %in% c("Premium", "Ideal")))
# Regress price on carets and 'premium_plus'
lm(price ~ carat + premium_plus, data = diamond_df) %>% summary()
# Add an interaction
felm(price ~ carat * premium_plus, data = diamond_df) %>% summary(robust = T)
felm(price ~ carat * premium_plus, data = diamond_df) %>% summary(robust = F)
# Try quadratic carat (with and without het-robust standard errors)
felm(price ~ carat + I(carat^2) + premium_plus, data = diamond_df) %>% summary(robust = T)
felm(price ~ carat + I(carat^2) + premium_plus, data = diamond_df) %>% summary(robust = F)
# Check the estimated curve
curve(-2111.46 + 6765.38 * x + 476.83 * x^2, from = 0, to = 5)
