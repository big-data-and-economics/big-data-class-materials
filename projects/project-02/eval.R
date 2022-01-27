
# Notes ----------------------------------------------------------------------------------
#   Goal: Evaluate competition submissions.

# Setup ----------------------------------------------------------------------------------
  # Packages
  library(pacman)
  p_load(tidyverse, data.table, magrittr, here)

# Evaluate submissions -------------------------------------------------------------------
  # Load the true values
  true_dt = here("test-private.csv") %>% fread()
  truth = true_dt[,y]
  # Iterate over submitted files
  eval_dt = lapply(
    # Find the submission files
    X = here("submissions") %>% dir(),
    FUN = function(f) {
      # Load the submission dataset
      f_dt = here("submissions", f) %>% fread()
      # Grab predictions
      pred = f_dt[[ncol(f_dt)]]
      # Calculate RMSE (with and without missing observations)
      data.table(
        student = f %>% str_split("_[0-9]", n = 2) %>% unlist() %>% head(1),
        rmse = mean((truth - pred)^2) %>% sqrt(),
        rmse_no_na = mean((truth - pred)^2, na.rm = T) %>% sqrt()
      )
    }
  ) %>% rbindlist()
  # Order
  setorder(eval_dt, rmse_no_na)
  # Add rank
  eval_dt[, rank := 1:.N]
  # Update rank for identical scores
  eval_dt[10:13, rank := 13]
  # Outcome
  eval_dt[, `:=`(
    points = round(5 + 5 * (.N - rank)/(.N - 1), 1)
  )]
  # Reorder by last name
  setorder(eval_dt, student)
  eval_dt