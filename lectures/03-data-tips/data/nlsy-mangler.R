library(tidyverse)

nlsy <- read_csv(unz('nlsy-data-checks.zip','nlsy-data-checks.csv'), 
    col_names=c('pubid','income_1997','sex','birth_month','birth_year',
    'region','hh_income','race_ethnicity','income_1998','income_1999','income_2000','hgc_xrnd'))

# rehape the data to long format
nlsy_long <- pivot_longer(nlsy, cols=starts_with('income'), names_to='year', values_to='income', names_prefix='income_') 

# write to csv, dta, tsv, excel
write_csv(nlsy_long, 'nlsy-long.csv')
haven::write_dta(nlsy_long, 'nlsy-long.dta')
write_tsv(nlsy_long, 'nlsy-long.tsv')
writexl::write_xlsx(nlsy_long, 'nlsy-long.xlsx')
jsonlite::write_json(nlsy_long, 'nlsy-long.json')

unzip('nlsy-data-checks.zip', 'nlsy-data-checks.cdb')

# zip up the tsv, zip, dta, and cdb files
zip('nlsy-long.zip', c('nlsy-long.csv', 'nlsy-long.tsv', 'nlsy-long.dta', 'nlsy-long.xlsx','nlsy-long.json','nlsy-data-checks.cdb'))

# delete all but zip file
files_to_delete <- list.files(pattern='nlsy-long') %>% 
    setdiff('nlsy-long.zip') %>% 
    file.path()

file.remove(files_to_delete)
file.remove('nlsy-data-checks.cdb')