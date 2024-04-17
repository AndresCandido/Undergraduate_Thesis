# THIS FILE IS INCOMPLETE, Monocle requires phenoData, an AnnotatedDataFrame object, where rows are cells, and columns are cell attributes (such as cell type, culture condition, day captured, etc.)
# We do NOT have phenoData yet, it seems that we need it to run monocle.

# This script formats csv files into the format used by monocle
# Load required packages
library(Matrix)

# Read the original matrix from the CSV file
original_matrix <- read.csv("data/Raw_data/gene_matrix.csv", row.names = 1)

# Convert the matrix to a dense matrix
#dense_matrix <- as.matrix(original_matrix)

# Convert the matrix to a sparse matrix
sparse_matrix <- Matrix(as.matrix(original_matrix), sparse = TRUE)

# Print the sparse matrix
#print(sparse_matrix)

# Write the sparse matrix to a new CSV file in the correct format
writeMM(sparse_matrix, "data/gene_matrix.csv")