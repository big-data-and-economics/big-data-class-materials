
# Notes ----------------------------------------------------------------------------------
# 	Goal: Generate fake dataset for prediction competition.

# Setup ----------------------------------------------------------------------------------
	# Packages
	library(pacman)
	p_load(tidyverse, data.table, fixest, estimatr, magrittr, here)

# Create dataset -------------------------------------------------------------------------
	# Set seed
	set.seed(12345)
	# Set size of population
	n = 1e3
	# Number of predictors
	n_x = 15
	# Create the var-cov matrix of the predictors
	sig = matrix(0.1, ncol = n_x, nrow = n_x)
	diag(sig) = 1
	for (i in seq(1, n_x-1, by = 1)) {
		sig[i,i+1] = 0.5
		sig[i+1,i] = 0.5
	}
	# Generate the predictors
	gen_dt = MASS::mvrnorm(
		n = n,
		mu = rep(0, n_x),
		Sigma = sig
	)
	# Convert to data table
	gen_dt %<>% as.data.table()
	# Change names
	setnames(gen_dt, paste0("x", 1:n_x))
	# Calculate the outcome
	gen_dt[, `:=`(
		y = exp(
			3 + 
			0.3 * x3 + 
			0.6 * (x3 > mean(x3)) +
			-(0.4) * x4 +
			0.1 * x4^2 +
			(-0.5) * (x9 < mean(x9)) +
			0.8 * x9 * x10 +
			x13 +
			(-1) * x14 +
			rnorm(n, mean = 0, sd = 3)
		)
	)]
	# Save the training and testing data
	write_csv(
		x = gen_dt[1:floor(0.8 * n),],
		file = "train.csv"
	)
	write_csv(
		x = gen_dt[(floor(0.8 * n)+1):n,-"y"],
		file = "test.csv"
	)
	write_csv(
		x = gen_dt[(floor(0.8 * n)+1):n,],
		file = "test-private.csv"
	)
