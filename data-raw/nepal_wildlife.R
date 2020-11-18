library(tidyverse)

# First load the

nepal_wildlife <- read_csv(here::here("data-raw", "Nepal.csv"))

## code to prepare `wildlife_data` dataset goes here

usethis::use_data(nepal_wildlife, overwrite = TRUE)
