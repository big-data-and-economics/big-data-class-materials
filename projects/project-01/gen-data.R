
# Notes ----------------------------------------------------------------------------------
# 	Data source: https://www.kaggle.com/zynicide/wine-reviews/home

# Setup ----------------------------------------------------------------------------------
	# Packages
	library(pacman)
	p_load(tidyverse, data.table, fixest, estimatr, magrittr, here)

# Load and clean data --------------------------------------------------------------------
	# Load the data
	wine_dt = here("winemag-data-130k-v2.csv") %>% fread()
	# Grab desired variables
	wine_dt %<>% .[,.(price, points, variety, country, province, taster_name)]
	# Drop missingness
	wine_dt %<>% na.omit()
	# Grab desired 'provinces'
	wine_dt %<>% .[province %in% c(
		"California", "Washington", "Oregon",
		"Bordeaux", "Burgundy", "Alsace"
	)]
	# Grab desired tasters
	wine_dt %<>% .[taster_name %in% c(
		"Virginie Boone", "Paul Gregutt", "Roger Voss", "Matt Kettmann"
	)]
	# Grab most common varieties
	variety_n = wine_dt[,.N,variety] %>% setorder(-N)
	wine_dt %<>% .[variety %in% c(
		variety_n[1:6,variety], "Gewürztraminer", "Pinot Gris", "Riesling"
	)]
	# Sample 10,000 observations
	set.seed(123456789)
	wine_dt %<>% sample_n(size = 1e4, replace = F)
	# Save
	write_csv(x = wine_dt, file = here("data-project-01.csv"))