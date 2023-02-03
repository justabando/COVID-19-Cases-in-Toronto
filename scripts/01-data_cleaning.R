#### Preamble ####
# Purpose: Cleaning the COVID-19 cases data set from OpenDataToronto
# Author: Justin Abando
# Data: 03 February 2023
# Contact: justin.abando@mail.utoronto.ca

#### Workspace setup ####

library(tidyverse)
library(dplyr)
library(janitor)

###Cleaning###

cleaned_covid_data <-
  clean_names(covid_cases) #Making names easier to type

###Refining data set###

cleaned_covid_data <-
  cleaned_covid_data |> 
  select( #Reducing data set to display relevant columns pertaining to the analysis
    age_group,
    source_of_infection,
    classification,
    outcome
  )

cleaned_covid_data$source_of_infection |> #Finding possible sources of infection
  unique() 

cleaned_covid_data$age_group |> #Finding all possible age groupings
  unique() 

final_covid_data <- #Filtering out observations that had no information for specific variables
  cleaned_covid_data |>
  filter(
    source_of_infection != "No Information") |>
  filter(
    age_group != "")




         