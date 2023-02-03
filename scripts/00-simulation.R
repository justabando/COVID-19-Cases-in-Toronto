###Simulating the data set###

library(tidyverse)
library(dplyr)

simulated_data <-
  tibble(
    age_group = sample( #Simulating the age group variable
      x = c( 
        "Under 19 years",
        "20 to 29 years",
        "30 to 39 years",
        "40 to 49 years",
        "50 to 59 years",
        "60 to 69 years",
        "70 to 79 years",
        "80 to 89 years",
        "90 and older"
      ),
      size = 100, #Arbitrary observation size
      replace = TRUE #Ensuring its a random sample
    ),
    classification = sample( #Simulating the classification variable
      x = c(
        "Confirmed",
        "Probable"
      ),
      size = 100,
      replace = TRUE
    ),
    outcome = sample( #Simulating the outcome variable
      x = c(
        "Resolved",
        "Fatal"
      ),
      size = 100,
      replace = TRUE
    ),
    source_of_infection = sample( #Simulating the source of infection variable
      x = c(
        "Close Contact",
        "Community",
        "Household Contact",
        "Outbreak, Congregate Settings",
        "Outbreak, Healthcare Institutions",
        "Outbreak, Other Settings",
        "Travel"
      ),
      size = 100,
      replace = TRUE
    )
  )

head(simulated_data) #Testing to see what the data set looks like at the start
tail(simulated_data) #Testing to see if the data is still consistent at the end

###Tests to ensure that the data set is properly made###

simulated_data |> #Testing if there are only 100 observations
  count()

#Age Group Tests

simulated_data$age_group |> #Testing if class of variable is defined as character
  class() 

simulated_data$age_group |> #Testing if there is only one of each unique age range
  unique()

#Classification Tests

simulated_data$classification |> #Is this variable a character?
  class()

simulated_data$classification |> #Testing if there is only two options
  unique()

#Outcome Tests

simulated_data$outcome |> #Is this variable a character?
  class()

simulated_data$outcome |> #Testing if there is only two options
  unique()

#Source of Infection Tests

simulated_data$source_of_infection |> #Is this variable a character?
  class()

simulated_data$source_of_infection |> #Testing if all settings are listed
  unique()

