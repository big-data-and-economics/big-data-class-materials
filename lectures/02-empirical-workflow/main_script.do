* File: main.do
* By: Kyle Coombs
* What: Runs the project from start to finish in Stata from the Taylor Swift project. 
* Date: 2023/09/12

* Install packages with housekeeping. Also put together paths.
do "housekeeping.do"
* User written functions can be included -- or you could write a package, your call
do "$build/clean_functions.do"
do "$analysis/analysis_functions.do"

* Import files
do "$build/01_import_census.do"
do "$build/02_import_admin_data.do"

* Clean files
do "$build/03_clean_census.do"
do "$build/04_clean_admin_data.do"

* Merge files 1 to 2
do "$build/05_merge_census_admin.do"

* Analysis
do "$analysis/06_summary_stats.do"
do "$analysis/07_basic_regression.do"

* Tables will likely be made with a host of Stata commands
do "$analysis/08_make_sum_figures.do"
do "$analysis/09_make_reg_figures.do"
do "$analysis/10_make_sum_tables.do"
do "$analysis/11_make_reg_tables.do"
