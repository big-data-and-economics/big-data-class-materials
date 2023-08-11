# Load packages
library(tidyverse)
library(magrittr)
library(NHANES)
library(modelsummary)

# load data
data(NHANES)
df <- NHANES
names(df) %>% print

# Subset the data to remove anyone under age 18 or above age 75
df <- df %>% filter(Age >= 18 & Age <= 75)

# Select the variables of interest
df <- df %>% select(Weight, Height, BMI, PhysActive, TVHrsDay, CompHrsDay, AlcoholYear, SmokeNow, SmokeAge, Gender, Age, Race3, HHIncome, Education)

# Produce two separate summary statistics tables (one for numeric variables and one for categorical variables)
# For numeric variables, use the datasummary() function with the output = "modelsummary_list" argument
num_table <- datasummary_skim(df %>% select_if(is.numeric), histogram = FALSE)

# For categorical variables, use the datasummary() function with the output = "modelsummary_list" argument and the statistic = "proportion" argument
cat_table <- datasummary_skim(df %>% select_if(is.factor), type = "categorical")

# Fit a linear regression model of BMI on PhysActive, Age, Race3, HHIncome, and Education
model <- lm(BMI ~ PhysActive + Age + Race3 + HHIncome + Education, data = df)

# Print the output to the console in markdown using the modelsummary() function
modelsummary(model, output = "markdown")