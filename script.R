#########################################
######## microbial-ecology-paper ######## 
#########################################

# Load necessary libraries in R 
library(vegan)
library(labdsv)
library(Hmisc)
library(corrplot)
library(multcomp)

# data is loaded into data frames
# bacterial_data, functional_data, plant_data

# Set random seed for reproducibility
set.seed(123)

# 1. Non-parametric Kruskal-Wallis test
# counts' is CFU/g and 'groups' is the treatment group (+AHg, -AHg, etc.)
kruskal_result <- kruskal.test(counts ~ groups, data = bacterial_data)
print(kruskal_result)

# 2. Diversity profile using Hill Series
hill_profile <- diversity(bacterial_data[, -1], index = "hill")
print(hill_profile)

# 3. Community dissimilarity: Bray-Curtis dissimilarity and cluster analysis
bray_curtis <- vegdist(bacterial_data[, -1], method = "bray")
hc <- hclust(bray_curtis, method = "average")
plot(hc, main = "Cluster Analysis - Bray-Curtis Dissimilarity")

# 4. Jaccard dissimilarity for functional traits
# Assuming binary data for functional traits
jaccard_matrix <- vegdist(functional_data[, -1], method = "jaccard")
print(jaccard_matrix)

# 5. Non-metric Multidimensional Scaling (NMDS)
nmds <- metaMDS(bray_curtis, k = 2)
plot(nmds, type = "t", main = "NMDS - Bray-Curtis")

# Permutational Multivariate Analysis of Variance (Adonis)
adonis_result <- adonis(bray_curtis ~ groups, data = bacterial_data)
print(adonis_result)

# 6. Indicator species analysis
# Assuming bacterial_data has species abundances
ind_species <- indval(bacterial_data[, -1], bacterial_data$groups)
print(ind_species)

# 7. Co-occurrence analysis: Spearman correlation
cor_matrix <- rcorr(as.matrix(bacterial_data[, -1]), type = "spearman")
corrplot(cor_matrix$r, method = "circle", type = "lower", tl.cex = 0.8)

# 8. Plant growth promotion and bioremediation experiments
# Assuming 'plant_data' has columns: treatment, response, and control groups
anova_result <- aov(response ~ treatment, data = plant_data)
summary(anova_result)

# Dunnett's test
dunnett_result <- glht(anova_result, linfct = mcp(treatment = "Dunnett"))
summary(dunnett_result)

# Notes for Venn Diagram:
# The Venn diagram requires exporting species presence/absence data for online tool use.
# Use the function `write.table` to save data for use in external tools.
write.table(species_data, "species_data_for_venn.txt", sep = "\t", row.names = FALSE)