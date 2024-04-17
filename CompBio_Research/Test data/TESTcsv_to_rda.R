# To use file in the R console use: 
#> source("TESTcsv_to_rda.R")
#> TESTcsv_to_rda("my_data_name.csv")

# Note:
# Make sure the files you want to convert are in the current directory

TESTcsv_to_rda <- function(file_name) {
  # read in the CSV file and use the SNV column as row names
  my_data <- read.csv(file_name, row.names = 1)

  # convert all non-row and non-column values to numeric
  my_data[, !(colnames(my_data) %in% rownames(my_data))] <- apply(my_data[, !(colnames(my_data) %in% rownames(my_data))], 2, as.numeric)
  
  # remove the file extension from the input file name
  rda_file_name <- sub("\\.csv$", "", file_name)
  
  # assign the data frame to a variable with the same name as the output file
  assign(rda_file_name, my_data)
  
  # save the data frame as RDA file
  save(list = rda_file_name, file = paste0(rda_file_name, ".rda"))
}