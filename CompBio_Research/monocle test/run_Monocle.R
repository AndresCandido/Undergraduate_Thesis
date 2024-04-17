# THIS FILE IS INCOMPLETE, Monocle requires phenoData, an AnnotatedDataFrame object, where rows are cells, and columns are cell attributes (such as cell type, culture condition, day captured, etc.)
# We do NOT have phenoData yet, it seems that we need it to run monocle.

# Step 1: Load Required Packages
library(monocle) # load packages if needed
library(Matrix)

# Step 2: Load Data
snv_matrix <- read.csv("data/beta_SNV_matrix.csv")
expression_matrix <- read.csv("data/gene_matrix.csv")

#Step 3: Create Monocle Data Objects
cds <- newCellDataSet(expression_matrix, phenoData = NULL, featureData = snv_matrix, expressionFamily = negbinomial()) #<---- we currently get an error at this step, phenoData is required.

#Step 4: Preprocess and Normalize Data
cds <- estimateSizeFactors(cds)
cds <- logNormCounts(cds)
cds <- preprocessCDS(cds)
cds <- reduceDimension(cds)

#Step 5: Define Cells of Interest
cell_types_of_interest <- c("cell_type_A", "cell_type_B")
cds_subset <- cds[, cds$cell_type %in% cell_types_of_interest]

#Step 6: Perform eQTL Analysis
eqtls <- testClusterEQTLs(cds_subset)

#Step 7: Interpret and Visualize Results
# Volcano plot
plot_eQTLs(eqtls, alpha = 0.05)

# Manhattan plot
plotManhattan(eqtls, alpha = 0.05)

# eQTL-gene network visualization
plotEQTLSummary(eqtls)