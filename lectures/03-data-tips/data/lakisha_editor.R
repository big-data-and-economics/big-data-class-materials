library(tidyverse)
library(AER)
data('ResumeNames')

# Need to be in data directory to run this!

lakisha <- ResumeNames %>%
    select(firstname=name,gender,race=ethnicity,ofjobs=jobs,call) %>% 
    mutate(across(where(is.factor),as.character),
            sample=runif(n()),
            ofjobs=ifelse(sample<0.01 & race=='afam',-99,ofjobs), # replace ofjobs with -99 if sample
            race=case_when(race=='cauc' & sample<.05~"Caucasian",
            race=='afam' & sample<.0014~"BLACK",
            TRUE~race),
            gender=case_when(gender=='female' & sample<.008~"WOMN",
                gender=='female' & sample >.992 ~ "FEMALE",
                gender=='male' & sample<.001 ~ "MALE",
                gender=='male' & sample>.999 ~ "MLE",
                TRUE~gender)) %>%
    select(-sample) 

bad_rows <- lakisha %>%
    head(3) %>%
    select(-ofjobs) %>%
    mutate(firstname=paste('firstname row',row_number()),
        gender=paste('gender row',row_number()),
        race=paste('race row',row_number()),
        call=paste('call row',row_number())) 

lakisha <- bind_rows(bad_rows,lakisha) 

saveRDS(lakisha,file='lakisha_aer.rds')
write_csv(lakisha,file='lakisha_aer.csv')
write_tsv(lakisha,file='lakisha_aer.tsv')
haven::write_dta(lakisha,path='lakisha_aer.dta')
# write excel file
writexl::write_xlsx(lakisha,path='lakisha_aer.xlsx')
jsonlite::write_json(lakisha,path='lakisha_aer.json')

zip('lakisha_aer.zip',c('lakisha_aer.rds','lakisha_aer.csv','lakisha_aer.tsv','lakisha_aer.xlsx','lakisha_aer.dta','lakisha_aer.json'))