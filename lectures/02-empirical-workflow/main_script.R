#File: main.Rmd or main.R
#By: Kyle Coombs
#What: Runs the project from start to finish in R from the Taylor Swift project. 
#Date: 2023/09/12

#Install packages with housekeeping. Also put together paths.
source('housekeeping.R')
#User written functions can be sourced -- or you could write a package, your call
source(paste0(build,'clean_functions.R'))
source(paste0(analysis,'analysis_functions.R'))

#Import files
source(paste0(build,'01_import_census.R'))
source(paste0(build,'02_import_admin_data.R'))

#Clean files
source(paste0(build,'03_clean_census.R'))
source(paste0(build,'04_clean_admin_data.R'))

#Merge files 1 to 2
source(paste0(build,'05_merge_census_admin.R'))

#Analysis
source('analysis/06_summary_stats.R')
source('analysis/07_basic_regression.R')

#Tables will likely be made with a host of R packages
source('analysis/08_make_sum_figures.R')
source('analysis/09_make_reg_figures.R')
source('analysis/10_make_sum_tables.R')
source('analysis/11_make_reg_tables.R')