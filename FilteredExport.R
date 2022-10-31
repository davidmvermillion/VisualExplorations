# Initialization ----------------------------------------------------------

library(tidyverse)

# Filtering ---------------------------------------------------------------

data_raw <- as_tibble(sunspot.month)
data <- head(data_raw, 24)
data$index = 1:length(data$x)

# Export ------------------------------------------------------------------

write.csv(data, file = 'FilteredExport.csv')