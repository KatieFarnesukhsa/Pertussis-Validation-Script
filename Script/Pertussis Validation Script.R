# Pertussis Validation Script
# Date: 17 April 2023
## This script compares prenatal pertussis coverage between months, datasources and geographies to flag any issues with the data

# Load packages
install.packages("tidyverse")
install.packages("here")

library(ggplot2)
library(tidyverse)
library(here)

# 


file_names <- list.files(here("Data"), pattern="*.csv", full.names=TRUE)
cov_df_list <- lapply(file_names, read.csv)
all_months_cov_df <- lapply(cov_df_list, transform, Month = paste(cov_df_list)) 

