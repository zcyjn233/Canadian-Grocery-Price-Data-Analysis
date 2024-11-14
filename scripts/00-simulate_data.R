#### Preamble ####
# Purpose: Simulated data
# Author: Wei Wang , Chiyue Zhuang
# Date: 14 November 2024
# Contact: won.wang@mail.utoronto.ca, chiyue.zhuang@mail.utoronto.ca

#### Workspace setup ####
library(tidyverse)
set.seed(853)


#### Simulate data ####
# Load necessary library
library(tidyverse)

# Set seed for reproducibility
set.seed(26)

# Define vendor names
vendors <- c(
  "NoFrills", "Loblaws", "Metro", "TandT", 
  "Voila", "SaveOnFoods", "Walmart", "Galleria"
)

# Generate simulated data
simulated_data <- tibble(
  vendor = sample(vendors, size = 800, replace = TRUE),   # Random vendor names
  current_price = round(runif(800, 0, 360), 3),           # Simulated current prices with min 0, max 360
  old_price = round(runif(800, 0, 800), 3)               # Simulated old prices with min 0, max 800
)

# Write data to CSV
write_csv(simulated_data, "data/00-simulated_data/simulated_data.csv")

