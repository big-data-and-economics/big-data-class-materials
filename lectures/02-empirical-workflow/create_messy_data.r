# Create messy data file
# Found here: https://github.com/higgi13425/medicaldata/tree/master/data-raw/messy_data

# install.packages('openxlsx')
# if not already installed
library(openxlsx)
library(gsheet)
library(here)

here::i_am("lectures/02-empirical-workflow/create_messy_data.r")
here()
setwd('lectures/02-empirical-workflow/')
dir.create('data',showWarnings = FALSE)
url <- "https://github.com/higgi13425/medicaldata/raw/master/data-raw/messy_data/messy_bp.xlsx"
download.file(url,destfile = 'data/messy_bp.xlsx')
# replace the filename "messy_infarct.xlsx" at the end of this long url path with the filename that you want to load. 
# Or just copy the whole path from the URL column below.
infarct <- openxlsx::read.xlsx('data/messy_bp.xlsx')
head(infarct)

bp <- read.xlsx('https://github.com/higgi13425/medicaldata/raw/master/data-raw/messy_data/messy_bp.xlsx')
bp_extra_rows <- data.frame(c('22','23','24'),c('13','11','1'),c('32','21','30'),
    c('1899','9999','1992'), c('Black','Black','White'),c('M','F',''),c('Hispanic','Hispanic','Not Hispanic'),
    c('999/999','143/20','130/60'),c('89','999','65'),
    c('999/999','999/999','130/61'),c('91','999','75'),
    c('999/999','999/999','127/63'),c('999','999','57'))

colnames(bp_extra_rows) <- names(bp)
#Add row and write to csv without an index:
add_row(bp,bp_extra_rows) %>%
    write.csv('data/messier_bp.csv',row.names=FALSE)

aki <- read.xlsx('https://github.com/higgi13425/medicaldata/raw/master/data-raw/messy_data/messy_aki.xlsx',startRow=4)
glucose <- read.xlsx('https://github.com/higgi13425/medicaldata/raw/master/data-raw/messy_data/messy_glucose.xlsx',startRow=4)

salary <- gsheet2tbl('https://docs.google.com/spreadsheets/d/1IPS5dBSGtwYVbjsfbaMCYIWnOuRmJcbequohNxCyGVw/edit?resourcekey#gid=1625408792')


library(gsheets)
salary <- gsheet2tbl('https://docs.google.com/spreadsheets/d/1IPS5dBSGtwYVbjsfbaMCYIWnOuRmJcbequohNxCyGVw/edit?resourcekey#gid=1625408792')
names(salary) <- c('timestamp','age','industry','job','jobcontext','salary','otherpay','currency','othercurrency','incomecontext','country','state','city','yearsprof','yearsfield','education','gender','race')
salary
