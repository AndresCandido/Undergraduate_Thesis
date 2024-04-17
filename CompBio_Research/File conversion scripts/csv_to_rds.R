# To use file in the R console use: 
#> source("csv_to_rds.R")
#> csv_to_rds("my_data_name.csv")

# Note:
# Make sure the files you want to convert are in the current directory

csv_to_rds <- function(file_name) {
  # read in the CSV file
  my_data <- read.csv(file_name)
  
  # remove the file extension from the input file name
  rds_file_name <- sub("\\.csv$", "", file_name)
  
  # save the data as RDS file
  saveRDS(my_data, paste0(rds_file_name, ".rds"))
}