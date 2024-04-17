#library(eQTLsingle) # load if needed (setup_eQTLsingle.R loads this for you)

load("toy_snvMatrix.rda")
load("toy_expressionMatrix.rda")
data("toy_snvMatrix") # originally was beta_SNV_matrix
data("toy_expressionMatrix")
# select valid SNV-gene pairs
# each genotype at least covers 30 cells
# each gene (expression level > 1) at least covers 30 cells
#print(beta_SNV_matrix)
#print(gene_matrix)

snv.gene.pair.metadata <- eQTLsingle_build_metadata(snvMatrix = toy_snvMatrix,
                                                    expressionMatrix = toy_expressionMatrix, 
                                                    snv.number.of.cells = 1, 
                                                    expression.min = 1, 
                                                    expression.number.of.cells = 1)
#print(snv.gene.pair.metadata)

eQTL.result <- eQTLsingle(toy_expressionMatrix,
                          snv.gene.pair.metadata)
#print(eQTL.result)

eQTL.result.target <- eQTL.result[(eQTL.result$SNVid == "SNV_3") &
                                    (eQTL.result$Geneid == "gene_10"),]
print(eQTL.result.target)

eQTLsingle_visualization(eQTL.result.target,toy_snvMatrix, snv.gene.pair.metadata)