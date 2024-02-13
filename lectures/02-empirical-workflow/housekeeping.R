# Housekeeping.R
# By: Your Name
# Date: YYYY-MM-DD
# What: This script loads the packages and data needed for the paper.

## Package installation -- uncomment if running for the first time
#install.packages(c('here','tidyverse'))
library(here)
library(tidyverse)
library(haven)

## Directory creation

here::i_am('housekeeping.R')

data_dir <- here::here('data')
raw_dir <- here::here(data_dir,'raw')
clean_dir <- here::here(data_dir,'clean')
output_dir <- here::here('output')
code_dir <- here::here('code')
processing_dir <- here::here(code_dir,'processing')
analysis_dir <- here::here(code_dir,'analysis')
documentation_dir <- here::here('documentation')

suppressWarnings({
    dir.create(data_dir)
    dir.create(raw_dir)
    dir.create(clean_dir)
    dir.create(documentation_dir)
    dir.create(code_dir)
    dir.create(processing_dir)
    dir.create(analysis_dir)
    dir.create(output_dir)
})