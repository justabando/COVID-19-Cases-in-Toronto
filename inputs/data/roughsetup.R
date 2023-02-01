library(opendatatoronto)
library(tidyverse)
library(dplyr)
library(janitor)

covid_cases<-
  list_package_resources("64b54586-6180-4485-83eb-81e8fae3b8fe")|> #Obtained data from unique dataset id from opendatatoronto under "For Developers" tab at https://open.toronto.ca/dataset/covid-19-cases-in-toronto/
  filter(name == "COVID19 cases") |> #Extracting the data of interest
  get_resource()