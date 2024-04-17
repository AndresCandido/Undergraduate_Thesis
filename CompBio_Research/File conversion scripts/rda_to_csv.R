# Load the necessary packages
library(data.table)

# Set the path to the .rda file
rda_file <- "data/beta_SNV_matrix.rda"

# Load the .rda file
data <- get(load(rda_file))

# Convert the data into a data frame (if needed)
if (!is.data.frame(data)) {
  data <- as.data.frame(data)
}

# Set the path to the output .csv file
csv_file <- "data/file2.csv"

# Write the data to a .csv file with row names
write.csv(data, file = csv_file)
