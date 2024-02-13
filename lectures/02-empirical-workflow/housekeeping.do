* Housekeeping.do
* By: Your Name
* Date: YYYY-MM-DD
* What: This script loads the packages and data needed for the paper.
  
// Directory creation
global data_dir "`c(current_working_directory)'/data"
global raw_dir "`data_dir'/raw"
global clean_dir "`data_dir'/clean"
global output_dir "`c(current_working_directory)'/output"
global code_dir "`c(current_working_directory)'/code"
global processing_dir "`code_dir'/processing"
global analysis_dir "`code_dir'/analysis"
global documentation_dir "`c(current_working_directory)'/documentation"

capture confirm dir "`data_dir'"
if _rc != 0 {
    mkdir "`data_dir'"
}

capture confirm dir "`raw_dir'"
if _rc != 0 {
    mkdir "`raw_dir'"
}

capture confirm dir "`clean_dir'"
if _rc != 0 {
    mkdir "`clean_dir'"
}

capture confirm dir "`output_dir'"
if _rc != 0 {
    mkdir "`output_dir'"
}

capture confirm dir "`code_dir'"
if _rc != 0 {
    mkdir "`code_dir'"
}

capture confirm dir "`processing_dir'"
if _rc != 0 {
    mkdir "`processing_dir'"
}

capture confirm dir "`analysis_dir'"
if _rc != 0 {
    mkdir "`analysis_dir'"
}

capture confirm dir "`documentation_dir'"
if _rc != 0 {
    mkdir "`documentation_dir'"
}
