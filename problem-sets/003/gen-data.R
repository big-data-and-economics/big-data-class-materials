
# Notes ----------------------------------------------------------------------------------
#   Crime data: https://crime-data-explorer.fr.cloud.gov/downloads-and-docs
#   Population data: https://www.macrotrends.net/states/illinois/population
#   Unemployment data: https://www.thebalance.com/unemployment-rate-by-year-3305506

# Setup ----------------------------------------------------------------------------------
  # Packages
  library(pacman)
  p_load(tidyverse, janitor, data.table, estimatr, magrittr, here)

# Load datasets --------------------------------------------------------------------------
  # Load population dataset
  pop_dt = here("data-raw", "illinois-population.csv") %>% fread()
  # Load unemployment dataset
  un_dt = here("data-raw", "us-unemployment.csv") %>% fread()
  # Load the police employment dataset and aggregate
  police_dt = here("data-raw", "illinois-police-employment-breakout.csv") %>% fread()
  police_dt %<>% .[str_detect(Year, "Officers"), .(
    n_officers = sum(Rate, na.rm = T)
  ), by = .(year = Series)]
  # Load crime data
  crime_v = here("data-raw", "illinois-violent-crime.csv") %>% fread()
  crime_p = here("data-raw", "illinois-property-crime.csv") %>% fread()
  crime_v %<>% .[Location == "Illinois"]
  crime_p %<>% .[Location == "Illinois"]
  crime_v[, Location := NULL]
  crime_p[, Location := NULL]
  setnames(crime_v, c("year", "n_crime_violent"))
  setnames(crime_p, c("year", "n_crime_property"))
  # Join datasets
  il_dt = pop_dt %>% merge(un_dt) %>% merge(police_dt) %>% merge(crime_v) %>% merge(crime_p)
  # Fix 'rate' variables
  il_dt[, `:=`(
    n_crime_violent = (n_crime_violent * (pop / 1e5)) %>% round(0),
    n_crime_property = (n_crime_property * (pop / 1e5)) %>% round(0)
  )]
  # Scale variables
  il_dt[, `:=`(
    pop = pop / 1e4,
    unemployment = unemployment / 1e2,
    n_officers = n_officers / 1e4,
    n_crime_violent = n_crime_violent / 1e4,
    n_crime_property = n_crime_property / 1e4
  )]

# Save data ------------------------------------------------------------------------------
  # Save data
  write_csv(
    x = il_dt,
    file = here("003-data.csv")
  )

# Figures --------------------------------------------------------------------------------
  # Time-series plots
  ggplot(data = il_dt, aes(x = year, y = pop)) + geom_line()
  ggplot(data = il_dt, aes(x = year, y = n_crime_violent)) + geom_line()
  ggplot(data = il_dt, aes(x = year, y = n_crime_property)) + geom_line()
  ggplot(data = il_dt, aes(x = year, y = n_officers)) + geom_line()
  ggplot(data = il_dt, aes(x = year, y = unemployment)) + geom_line()

# Regressions ----------------------------------------------------------------------------
  # Static
  lm(log(n_crime_property) ~ log(n_officers), data = il_df) %>% tidy()
  # Static: Add population
  lm(log(n_crime_property) ~ log(n_officers) + log(pop), data = il_df) %>% tidy()
  # Lagged explanatory
  lm(log(n_crime_property) ~ log(n_officers) + log(pop) + lag(log(n_officers)), data = il_df) %>% tidy()
  # ADL(1,1)
  lm(log(n_crime_property) ~ (n_officers) + (pop) + lag((n_officers)) + lag((n_crime_property)), data = il_df) %>% tidy()
  # Differenced
  lm(diff(log(n_crime_property)) ~ diff(log(n_officers)) + diff(log(pop)) + diff(unemployment), data = il_df) %>% tidy()
