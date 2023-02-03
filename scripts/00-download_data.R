###PReparing the data###


library(opendatatoronto)

covid_cases<-
  list_package_resources("64b54586-6180-4485-83eb-81e8fae3b8fe")|> 
  filter(name == "COVID19 cases") |> 
  get_resource()

write_csv( #Saving the raw data to the directory to be accessed at any time
  x = covid_cases,
  file = "raw_data.csv"
)
