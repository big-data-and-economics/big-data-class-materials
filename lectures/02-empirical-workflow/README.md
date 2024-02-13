# Example README: The Economy (Taylor's Version): Pop Concerts Helped The Economy Shake Off a Pandemic Slump

## Project Overview

This project explores the effects of a Taylor Swift concert on local business traffic and sales. It utilizes data from taylorswift.com to index her concert dates and locations, and merges this information with local business data on traffic and sales. 

The project consists of two main parts: data collection and analysis. Initially, the concert dates and locations are scraped from taylorswift.com using web scraping techniques. The local business data on traffic and sales is collected from various sources. The collected data is then cleaned and merged to create a unified dataset for analysis. The analysis is performed using R, and the findings are documented in an RMarkdown report. 

To replicate the project, an internet connection and access to R are required. Running the code files in order will generate the final report. It is important to run the scripts before attempting to knit the RMarkdown document.

## Steps to Replicate

_Note: See below for version that uses Stata instead._

### Setting up the project

1. Clone this repository to your local machine. (Alternatively, fork and clone the repository if you would like to suggest changes.)
2. Set your working directory to the main project folder. All file paths are set relative to this folder.

### Running scripts (R versions)

1. The file that runs all other files is `main_script.R`. Run this file to execute all other scripts in the correct order.
2. `main_script.R` first builds the data using numbered scripts in the build folder. Inside each scripts there is a docstring with additional information on what they do and what to run next. Follow the numbers and run the scripts in order. The scripts will download and clean the data.
3. After running all files in build, `main_script.R` runs the analysis folder (within the code folder) scripts. The scripts in analysis are numbered, but they can be run in any order. All are based on variations of the final data created in build. Ideally, all should run in the process of knitting the RMarkdown, so they do not need to be run individually. Currently the relative file paths are set to run in the RMarkdown file, so they would need to be altered to reflect a different working directory.
4. Knit the RMarkdown. This will produce the final paper by combining all of the other RMarkdown files from the draft folder. The RMarkdown final draft can be found in the final folder within the writing folder.

### Running scripts (Stata version)

1. The file that runs all other files is `main_script.do`. Run this file to execute all other scripts in the correct order.
2. `main_script.do` first builds the data using numbered scripts in the build folder. Inside each script, there is a docstring with additional information on what they do and what to run next. Follow the numbers and run the scripts in order. The scripts will download and clean the data.
3. After running all files in build, `main_script.do` runs the analysis folder (within the code folder) scripts. The scripts in analysis are numbered, but they can be run in any order. All are based on variations of the final data created in build. Ideally, all should run in the process of knitting the .tex file, so they do not need to be run individually. Currently, the relative file paths are set to run in the .tex file, so they would need to be altered to reflect a different working directory.
4. Compile the .tex file. This will produce the final paper by combining all of the other .tex files from the draft folder. The .tex final draft can be found in the final folder within the writing folder.

Important folder locations to know:

- code, data, output, literature, presentations, writing are all folders within the main project folder.

### Critical to replication:

- code folder: build for scripts to build the data and analysis for scripts to analyze the data
    - build: scripts to build the dataset for analysis
    - analysis: scripts to analyze the data
- data folder: raw for raw data, temp for various saves throughout building, clean for cleaned data, and final for final data
    - raw: raw data
    - temp: temporary data saves
    - clean: cleaned data
- output folder: figures for figures produced in analysis and tables for tables produced in analysis
    - figures: figures produced in analysis
    - tables: tables produced in analysis

### Other folders:

- literature folder: for any literature used in the project
- presentations folder: for any presentations given on the project
- writing folder: drafts for RMarkdown sections, final for the RMarkdown final draft.
housekeeping.r is an R script in the main directory that sets relative file paths and loads all packages. It is run at the beginning of all other R scripts.

