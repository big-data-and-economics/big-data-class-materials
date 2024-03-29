library(tidyverse)

download.file('https://opportunityinsights.org/wp-content/uploads/2019/05/project4.zip',destfile='atlas-data.zip')

# read dta, then put in a CSV
haven::read_dta(unz('atlas-data.zip','project4/atlas_test.dta')) %>% readr::write_csv('atlas_test.csv')
haven::read_dta(unz('atlas-data.zip','project4/atlas_training.dta')) %>% readr::write_csv('atlas_training.csv')

# data dictionary
unzip('atlas-data.zip','project4/training_data_descrip.pdf',exdir='documentation')

# Get rid of it
file.remove('atlas-data.zip')

reg_tree_spec <- decision_tree() %>%
  set_engine("rpart") %>%
  set_mode("regression")

reg_tree_fit <- fit(reg_tree_spec, kfr_pooled_p25 ~ ., select(opp_atlas, kfr_pooled_p25, matches('P_')))

reg_tree_fit %>%
  extract_fit_engine() %>%
  rpart.plot()