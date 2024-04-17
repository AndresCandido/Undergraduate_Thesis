library(eQTLsingle) # load if needed 

#load("beta_SNV_matrix.rda")
#load("gene_matrix.rda")
data("beta_SNV_matrix")
data("gene_matrix")

# Create the snv.gene.pair.metadata object, this needed to create the eQTL.result dataframe object
snv.gene.pair.metadata <- eQTLsingle_build_metadata(snvMatrix = beta_SNV_matrix,
                                                    expressionMatrix = gene_matrix, 
                                                    snv.number.of.cells = 1, 
                                                    expression.min = 1, 
                                                    expression.number.of.cells = 1)
#print(snv.gene.pair.metadata)

# Create the eQTL.result dataframe object
eQTL.result <- eQTLsingle(gene_matrix,
                          snv.gene.pair.metadata)

# Print eQTL.result (if needed)
print(eQTL.result)

# Select a row from the eQTL.result
eQTL.result.target <- eQTL.result[(eQTL.result$SNVid == "SNV_2") &
                                    (eQTL.result$Geneid == "REG1A"),]

# Print eQTL.result.target (if needed)
print(eQTL.result.target)

# The following command makes a violin plot using the eQTL.result.target
eQTLsingle_visualization(eQTL.result.target,gene_matrix, snv.gene.pair.metadata) 

# The following command creates a .csv file with the data from eQTL.result
write.csv(eQTL.result, "eQTL_result.csv", row.names=FALSE)