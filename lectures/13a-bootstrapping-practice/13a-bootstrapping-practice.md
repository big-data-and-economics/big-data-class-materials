---
title: Big Data and Economics
subtitle: Bootstrapping, Functions, and Parallel Processing
author:
  name: Kyle Coombs
  affiliation: Bates College | [DCS/ECON 368](https://github.com/ECON368-fall2023-big-data-and-economics/big-data-class-materials)  
output:
  html_document:
    theme: journal
    highlight: haddock
    # code_folding: show
    toc: yes
    toc_depth: 4
    toc_float: yes
    keep_md: true
    keep_tex: false ## Change to true if want keep intermediate .tex file
    css: css/preamble.css ## For multi-col environments
  pdf_document:
    latex_engine: xelatex
    toc: true
    dev: cairo_pdf
    # fig_width: 7 ## Optional: Set default PDF figure width
    # fig_height: 6 ## Optional: Set default PDF figure height
    includes:
      in_header: tex/preamble.tex ## For multi-col environments
    extra_dependencies: [float, booktabs, longtable]
    pandoc_args:
        --template=tex/mytemplate.tex ## For affiliation field. See: https://bit.ly/2T191uZ
always_allow_html: true
urlcolor: blue
mainfont: cochineal
sansfont: Fira Sans
#monofont: Fira Code ## Although, see: https://tex.stackexchange.com/q/294362
## Automatically knit to both formats:
knit: (function(inputFile, encoding) {
 rmarkdown::render(inputFile, encoding = encoding, 
 output_format = 'all') 
 })
---



## Software requirements

### R packages 

It's important to note that "base" R already provides all of the tools to implement a regression discontinuity design, but there are some great other tools to use!

- New: **boot**, **parallel**, **tictoc**, **pbapply**, **future**, **future.apply**, **furrr**
- Already used: **tidyverse**, **fixest**, **haven**, **sandwich**, **broom**, **stargazer**, **lmtest**, **AER**

A convenient way to install (if necessary) and load everything is by running the below code chunk.


```r
## Load and install the packages that we'll be using today
if (!require("pacman")) install.packages("pacman")
pacman::p_load(boot,doParallel,fixest,sandwich,haven,tidyverse,broom,stargazer,lmtest,tictoc,parallel,pbapply,future,future.apply,furrr,AER)

## My preferred ggplot2 plotting theme (optional)
theme_set(theme_minimal())
```


## Dataset

In this activity, we are going to work through bootstrapping to get standard errors for a regression model. We will use the `ResumeNames` dataset, which is in the AER package. The data come from the Resume Audit study by Bertrand and Mullainathan (2004). The data contain a row that corresponds to a ficitious resume that the authors sent to businesses in Boston and Chicago. The resumes were randomly assigned either a "white-sounding" name or a "black-sounding" name, among other characteristics. The data contain information on whether the business called the resume back for an interview. The outcome of interest way the average callback gap.


```r
# library(AER) # already loaded
data("ResumeNames")
cleaned_resumes <- ResumeNames %>% 
  mutate(female=gender=='female',
    afam=ethnicity=='afam',
    call=call=='yes') %>%
    select(female, afam,call) %>%
  as_tibble()

cleaned_resumes
```

```
## # A tibble: 4,870 × 3
##    female afam  call 
##    <lgl>  <lgl> <lgl>
##  1 TRUE   FALSE FALSE
##  2 TRUE   FALSE FALSE
##  3 TRUE   TRUE  FALSE
##  4 TRUE   TRUE  FALSE
##  5 TRUE   FALSE FALSE
##  6 FALSE  FALSE FALSE
##  7 TRUE   FALSE FALSE
##  8 TRUE   TRUE  FALSE
##  9 TRUE   TRUE  FALSE
## 10 FALSE  TRUE  FALSE
## # ℹ 4,860 more rows
```

## Functions 

Functions are a great way to make your code more readable and reusable. They are also a great way to make sure you don't make mistakes when you're running the same code over and over again.

### Basic function to sample data

Let's start with a basic function. Here is a function that creates a random sample of the data with the same number of observations. This is the first step in bootstrapping. 



```r
set.seed(1000) # replication
random_sample <- function(data) {
  # Get the number of observations
  n <- nrow(data)
  # Sample the data
  data[sample(1:n, n, replace = TRUE), ]
}
random_sample(data=cleaned_resumes)
```

```
## # A tibble: 4,870 × 3
##    female afam  call 
##    <lgl>  <lgl> <lgl>
##  1 TRUE   FALSE FALSE
##  2 FALSE  TRUE  FALSE
##  3 TRUE   TRUE  FALSE
##  4 TRUE   FALSE FALSE
##  5 FALSE  TRUE  FALSE
##  6 FALSE  FALSE FALSE
##  7 TRUE   TRUE  FALSE
##  8 TRUE   TRUE  FALSE
##  9 TRUE   FALSE FALSE
## 10 TRUE   TRUE  FALSE
## # ℹ 4,860 more rows
```

Can you think of some way to improve on this sampling procedure? What is true in the experiment that we will lose through a random sample? Try to write up a better version that accounts for this. 

Now test yourself by amending the function to run a regression of callback on ethnicity. Test it out!
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.
.

```r
set.seed(1000) # replication
random_sample_lm <- function(data) {
  # Get the number of observations
  n <- nrow(data)
  # Sample the data
  m1 <- lm(call ~ afam, data[sample(1:n, n, replace = TRUE), ])
  # Return the coefficients
  return(coef(m1)[2])
}

random_sample_lm(cleaned_resumes)
```

```
##    afamTRUE 
## -0.03381552
```


## Iteration

Iteration is a great way to run the same code over and over again. It's especially useful for bootstrapping because bootstrapping is just running the same code over and over again with different data.

### For loop

The most basic way to iterate is with a for loop. This is a great way to start because it's easy to understand and you can see what's going on. Let's write a for loop that iterates through the `random_sample_lm()` function 100 times. Make sure to create a list to store the results in.


```r
results <- vector("list",100)
set.seed(1000) # replication
for (i in 1:100) {
  results[[i]] <- random_sample_lm(cleaned_resumes)
}
```

### Apply

You can do the same thing using the `*apply` family. Here it is with `lapply()`:


```r
set.seed(1000) # replication
results <- lapply(1:100, function(x) random_sample_lm(cleaned_resumes))
```

Also, the `pbapply` package has a progress bar, which is nice for long simulations.


```r
set.seed(1000) # replication
results <- pbapply::pblapply(1:100, function(x) random_sample_lm(cleaned_resumes))
```

### Map

The `map()` function from the **purrr** package is a great way to iterate over a list. It's a bit more complicated than `lapply()`, but it's worth learning because it's very powerful. Here's an example with `map_df()`.


```r
set.seed(1000)
results <- map_df(1:100, function(x) random_sample_lm(cleaned_resumes))
```

## Parallel Processing 

Parallel processing is a pretty handy trick to speed up your code. It's especially useful for computationally intensive simulations that can be broken up into smaller chunks. As a warning, parallel programming can get quite complex, so we're sticking with the basics today. For more advanced coverage, check work by [Grant McDermott](https://grantmcdermott.com/ds4e/parallel.html#general-parallel-programming-topics).

First, let's check how many cores you have on your machine. R runs things in parallel by splitting them up between cores! 


```r
# future::availableCores() ## Another option
detectCores()
```

```
## [1] 8
```

My computer has 8 cores, yours likely, but not necessarily, has fewer. That's okay! You can still split things into chunks and run them in parallel.

I'll show several different approaches.

### future.apply


```r
set.seed(123L)
tic()
future_lapply(1:1e3, 
  function(i) random_sample_lm(cleaned_resumes)) %>%
  bind_rows()
```

```
## Warning: UNRELIABLE VALUE: One of the 'future.apply' iterations
## ('future_lapply-1') unexpectedly generated random numbers without declaring so.
## There is a risk that those random numbers are not statistically sound and the
## overall results might be invalid. To fix this, specify 'future.seed=TRUE'. This
## ensures that proper, parallel-safe random numbers are produced via the
## L'Ecuyer-CMRG method. To disable this check, use 'future.seed = NULL', or set
## option 'future.rng.onMisuse' to "ignore".
```

```
## Warning: UNRELIABLE VALUE: One of the 'future.apply' iterations
## ('future_lapply-2') unexpectedly generated random numbers without declaring so.
## There is a risk that those random numbers are not statistically sound and the
## overall results might be invalid. To fix this, specify 'future.seed=TRUE'. This
## ensures that proper, parallel-safe random numbers are produced via the
## L'Ecuyer-CMRG method. To disable this check, use 'future.seed = NULL', or set
## option 'future.rng.onMisuse' to "ignore".
```

```
## Warning: UNRELIABLE VALUE: One of the 'future.apply' iterations
## ('future_lapply-3') unexpectedly generated random numbers without declaring so.
## There is a risk that those random numbers are not statistically sound and the
## overall results might be invalid. To fix this, specify 'future.seed=TRUE'. This
## ensures that proper, parallel-safe random numbers are produced via the
## L'Ecuyer-CMRG method. To disable this check, use 'future.seed = NULL', or set
## option 'future.rng.onMisuse' to "ignore".
```

```
## Warning: UNRELIABLE VALUE: One of the 'future.apply' iterations
## ('future_lapply-4') unexpectedly generated random numbers without declaring so.
## There is a risk that those random numbers are not statistically sound and the
## overall results might be invalid. To fix this, specify 'future.seed=TRUE'. This
## ensures that proper, parallel-safe random numbers are produced via the
## L'Ecuyer-CMRG method. To disable this check, use 'future.seed = NULL', or set
## option 'future.rng.onMisuse' to "ignore".
```

```
## Warning: UNRELIABLE VALUE: One of the 'future.apply' iterations
## ('future_lapply-5') unexpectedly generated random numbers without declaring so.
## There is a risk that those random numbers are not statistically sound and the
## overall results might be invalid. To fix this, specify 'future.seed=TRUE'. This
## ensures that proper, parallel-safe random numbers are produced via the
## L'Ecuyer-CMRG method. To disable this check, use 'future.seed = NULL', or set
## option 'future.rng.onMisuse' to "ignore".
```

```
## Warning: UNRELIABLE VALUE: One of the 'future.apply' iterations
## ('future_lapply-6') unexpectedly generated random numbers without declaring so.
## There is a risk that those random numbers are not statistically sound and the
## overall results might be invalid. To fix this, specify 'future.seed=TRUE'. This
## ensures that proper, parallel-safe random numbers are produced via the
## L'Ecuyer-CMRG method. To disable this check, use 'future.seed = NULL', or set
## option 'future.rng.onMisuse' to "ignore".
```

```
## Warning: UNRELIABLE VALUE: One of the 'future.apply' iterations
## ('future_lapply-7') unexpectedly generated random numbers without declaring so.
## There is a risk that those random numbers are not statistically sound and the
## overall results might be invalid. To fix this, specify 'future.seed=TRUE'. This
## ensures that proper, parallel-safe random numbers are produced via the
## L'Ecuyer-CMRG method. To disable this check, use 'future.seed = NULL', or set
## option 'future.rng.onMisuse' to "ignore".
```

```
## Warning: UNRELIABLE VALUE: One of the 'future.apply' iterations
## ('future_lapply-8') unexpectedly generated random numbers without declaring so.
## There is a risk that those random numbers are not statistically sound and the
## overall results might be invalid. To fix this, specify 'future.seed=TRUE'. This
## ensures that proper, parallel-safe random numbers are produced via the
## L'Ecuyer-CMRG method. To disable this check, use 'future.seed = NULL', or set
## option 'future.rng.onMisuse' to "ignore".
```

```
## # A tibble: 1,000 × 1
##    afamTRUE
##       <dbl>
##  1  -0.0365
##  2  -0.0403
##  3  -0.0298
##  4  -0.0190
##  5  -0.0309
##  6  -0.0307
##  7  -0.0267
##  8  -0.0242
##  9  -0.0237
## 10  -0.0463
## # ℹ 990 more rows
```

```r
toc(log=TRUE)
```

```
## 3.61 sec elapsed
```

#### pbapply


```r
set.seed(123L)
tic()
sim_pblapply = pblapply(1:1e3, function(i) random_sample_lm(cleaned_resumes), cl = parallel::detectCores())
toc(log=TRUE)
```

```
## 3.86 sec elapsed
```

### furrr


```r
tic()
future_map_dfr(1:1e3, 
  function(i) random_sample_lm(cleaned_resumes), 
  .options = furrr_options(seed=123L)) %>%
  bind_rows()
```

```
## # A tibble: 1,000 × 1
##    afamTRUE
##       <dbl>
##  1  -0.0266
##  2  -0.0198
##  3  -0.0420
##  4  -0.0461
##  5  -0.0310
##  6  -0.0372
##  7  -0.0226
##  8  -0.0328
##  9  -0.0177
## 10  -0.0241
## # ℹ 990 more rows
```

```r
toc(log=TRUE)
```

```
## 6.52 sec elapsed
```

This is the best way to make sure you understand the bootstrapping process. 

## Bootstrapping out of the box

### *sandwich* package

The sandwich package is great for estimating all sorts of funny standard errors in R. It is often combined with the `coeftest` function from the **lmtest** package to substitute new standard errors into the model after estimation and specify the number of replications. 


```r
#library(sandwich);  library(lmtest) #already loaded

# Run a regression assuming normal (iid) errors
m <- lm(call ~ afam, data = cleaned_resumes) 
 
# Obtain the boostrapped SEs
coeftest(m, vcov = vcovBS(m,
  R=1000 # Number of replications
  )
) 
```

```
## 
## t test of coefficients:
## 
##               Estimate Std. Error t value  Pr(>|t|)    
## (Intercept)  0.0965092  0.0060210 16.0287 < 2.2e-16 ***
## afamTRUE    -0.0320329  0.0078819 -4.0641 4.898e-05 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

**sandwich** can be run in parallel by specifying the "cores" to use. This is useful for computationally intensive simulations. 


```r
coeftest(m, vcov = vcovBS(m,
  R=1000, # Number of replications
  cores=2 # Number of cores to use
  )
) 
```

```
## 
## t test of coefficients:
## 
##             Estimate Std. Error t value  Pr(>|t|)    
## (Intercept)  54.0666    51.3619  1.0527   0.30119    
## mpg          -2.7748     1.3154 -2.1095   0.04365 *  
## cyl          23.9786     5.1507  4.6554 6.603e-05 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

One challenge is **sandwich** only works for standard error calculations and does not give you as much information on the bootstrap needed to use it other ways! 

### **boot** package

The boot package is one of the most flexible packages for bootstrapping in R. It allows you to bootstrap any function that you can write in R. It also allows you to parallelize your bootstrap simulations, which can be very useful for computationally intensive simulations. 


```r
#library(tidyverse); library(boot)
set.seed(1000) # replication

# Our estimation function. The first argument must be the data
# and the second the indices defining the bootstrap sample
est_model <- function(d, index) {
    # Run our model
    # Use index to pick the bootstrap sample
    m <- lm(call ~ afam, data = d[index,])
    # Return the estimate(s) we want to bootstrap
    return(c(coef(m)['afam']))
}

# Now the bootstrap call!
boot_results <- boot(data=cleaned_resumes, # data
                statistic=est_model, # Estimation function,

                R=1000) # Number of bootstrap simulations
```

Here's that again, but now in parallel:


```r
boot_results <- boot(data=cleaned_resumes, # data
                statistic=est_model, # Estimation function,
                R=1000, # simulations
                parallel = "multicore", # parallelization method
                ncpus = parallel::detectCores()) # number of cores to use
```

There are a number of handy visualization tools and table shortcuts to use with the **boot** package too:


```r
# See the coefficient estimates and their bootstrap standard errors
plot(results)
```

![](13a-bootstrapping-practice_files/figure-html/plot-boot-1.png)<!-- -->

```r
# Optional: print regression table with the bootstrap SEs
# This uses stargazer, but the method is similar
# with other table-making packages,
# see /Presentation/export_a_formatted_regression_table.html
# library(broom) # already loaded
tidy_results <- tidy(boot_results)

#library(stargazer) # already loaded
m1 <- lm(call~afam, data = cleaned_resumes)
stargazer(m1, se = list(tidy_results$std.error), type = 'text')
```

```
## 
## % Error: Argument 'se' must be NULL (default), or a list of numeric vectors.
```

That said, it can be a bit cumbersome to use. For example, if you want to bootstrap a function that takes more than two arguments, you need to use the `...` argument and define `extraPar` and `numCenter`. This can be a bit confusing and easy to screw up.

The code below does not work. Can you figure out why?


```r
statFun <- function(funData, indices, addPars, centerMean)
    {
      # Check to see if extra parameters
      if(addPars)
      {
        result <- mean(funData[indices] - centerMean)
      }else
      {
        result <- mean(funData[indices])
      }

      # Return the value
      return(result)
    }

boot(testData, statFun, R = 100, extraPar = TRUE, numCenter = mean(testData)) 
```
