library(tidyverse)

opp_atlas <- read_csv("https://www2.census.gov/ces/opportunity/county_outcomes_simple.csv",
    show_col_types=FALSE) %>% 
  dplyr::select(state,
    county,
    cz,
    czname,
    kfr_pooled_pooled_p25,
    kfr_white_pooled_p25) 

covariates <-  read_csv('https://www2.census.gov/ces/opportunity/cty_covariates.csv',
    show_col_types=FALSE) %>% 
dplyr::select(
  state,
  county,
  poor_share1990,
  ann_avg_job_growth_2004_2013
)

opp_atlas <- opp_atlas %>% left_join(covariates) %>%
  mutate(random = runif(nrow(opp_atlas)),
     job_growth_quartile = as.integer(cut(ann_avg_job_growth_2004_2013, breaks = quantile(ann_avg_job_growth_2004_2013, probs = c(0, 0.25, 0.5, 0.75, 1),na.rm=TRUE),label=c(1,2,3,4))),
    poor_share1990=ifelse(is.na(poor_share1990) | random>.95,99,poor_share1990),
    kfr_pooled_pooled_p25=ifelse(is.na(kfr_pooled_pooled_p25) | random<.05,99,kfr_pooled_pooled_p25)) %>%
  dplyr::select(-random) 

write_csv(opp_atlas, "big-data-class-materials/lectures/10-regression/opp_atlas_amended.csv")