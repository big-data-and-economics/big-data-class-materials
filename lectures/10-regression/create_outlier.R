library(tidyverse)

opp_atlas <- read_csv("https://www2.census.gov/ces/opportunity/county_outcomes_simple.csv",
    show_col_types=FALSE) %>% 
  select(state,
    county,
    cz,
    czname,
    kfr_pooled_pooled_p25) 

covariates <-  read_csv('https://www2.census.gov/ces/opportunity/cty_covariates.csv',
    show_col_types=FALSE) %>% 
select(
  state,
  county,
  poor_share1990,
  ann_avg_job_growth_2004_2013
)

opp_atlas <- opp_atlas %>% left_join(covariates) %>%
  left_join(fips) %>%
  mutate(
    poor_share1990=ifelse(is.na(poor_share1990),99,poor_share1990),
    kfr_pooled_pooled_p25=ifelse(is.na(kfr_pooled_pooled_p25),99,kfr_pooled_pooled_p25)) 

write_csv(opp_atlas, "opp_atlas_amended.csv")