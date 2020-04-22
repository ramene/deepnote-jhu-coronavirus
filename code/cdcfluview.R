install.packages('cdcfluview')
library(cdcfluview)

# documentation
# https://cran.r-project.org/web/packages/cdcfluview/cdcfluview.pdf
# https://github.com/hrbrmstr/cdcfluview
# https://rdrr.io/cran/cdcfluview/man/get_hosp_data.html

mypath = './data/raw/cdcfluview/'


# Retrieves the age group distribution of influenza 
# positive tests that are reported by public health
# laboratories by influenza virus type and subtype/lineage. 
# Laboratory data from multiple seasons
# and different age groups is provided.
agd <- age_group_distribution()
write.csv(agd, paste(mypath,"age_groups.csv", sep=''), row.names = FALSE)


# Laboratory-Confirmed Influenza Hospitalizations
hosp_all <- hospitalizations(surveillance_area = c("flusurv", "eip", "ihsp"),
                 region = "all", years = NULL)
write.csv(hosp_all, paste(mypath,"hospitalizations_all", sep=''), row.names = FALSE)


# The CDC FluView Portal provides in-season and past seasons’ national, 
# regional, and state-level
# outpatient illness and viral surveillance data from both ILINet 
# (Influenza-like Illness Surveillance Network) and 
# WHO/NREVSS (National Respiratory and Enteric Virus Surveillance System).
ili_national <- ilinet("national")
write.csv(ili_national, paste(mypath,"ili_national.csv", sep=''), row.names = FALSE)


# The National Center for Health Statistics (NCHS) collects and disseminates the 
# Nation’s official vital statistics. NCHS collects death certificate data from 
# state vital statistics offices for virtually all deaths occurring in the United 
# States. Pneumonia and influenza (P&I) deaths are identified based
# on ICD-10 multiple cause of death codes. 
# NCHS Mortality Surveillance System data are presented by the week the death 
# occurred at the national, state, and HHS Region levels. Data on the percentage 
# of deaths due to P&I on a national level are released two weeks after the week 
# of death to allow for collection of enough data to produce a stable percentage. 
# States and HHS regions with less than 20 reported by week during 2008-2012) 
# will be marked as insufficient data. Collection of complete data is not expected 
# at the time of initial report, and a reliable percentage of deaths due to P&I 
# is not anticipated at the U.S. Department of Health and Human Services region 
# or state level within this two week period. The data for earlier weeks are 
# continually revised and the proportion of deaths due to P&I may increase
# or decrease as new and updated death certificate data are received by NCHS.
# The seasonal baseline of P&I deaths is calculated using a periodic regression 
# model that incorporates a robust regression procedure applied to data from the 
# previous five years. An increase of 1.645 standard deviations above the seasonal 
# baseline of P&I deaths is considered the "epidemic threshold," i.e., the point 
# at which the observed proportion of deaths attributed to pneumonia or influenza 
# was significantly higher than would be expected at that time of the year in the 
# absence of substantial influenza-related mortality. Baselines and thresholds are 
# calculated at the national and regional level and by age group.
mortality <- pi_mortality()
write.csv(mortality, paste(mypath,"mortality.csv", sep=''), row.names = FALSE)


# The CDC FluView Portal provides in-season and past seasons’ national, regional, and 
# state-level outpatient illness and viral surveillance data from both ILINet 
# (Influenza-like Illness Surveillance Network) and WHO/NREVSS (National Respiratory 
# and Enteric Virus Surveillance System).
# HHS, Census and State data retrieval is not as "instantaneous" as their ILINet 
# counterparts.
# Also, beginning for the 2015-16 season, reports from public health and clinical 
# laboratories are presented separately in the weekly influenza update. This is 
# the reason why a list of data frames is returned.
# ALSO The new CDC API seems to be missing some public health lab data fields.
who_nrevss_national <- who_nrevss("national")
write.csv(who_nrevss_national["combined_prior_to_2015_16"], 
          paste(mypath,"who_nrevss_national_prior_to_2015_16.csv", sep=''), 
          row.names = FALSE)
write.csv(who_nrevss_national["public_health_labs"], 
          paste(mypath,"who_nrevss_national_public_health_labs.csv", sep=''), 
          row.names = FALSE)
write.csv(who_nrevss_national["clinical_labs"], 
          paste(mypath,"who_nrevss_national_clinical_labs.csv", sep=''), 
          row.names = FALSE)