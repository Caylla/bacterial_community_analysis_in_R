
![mercury](https://github.com/user-attachments/assets/75d49c42-e83c-4e13-a902-60c44824baac)

https://pubmed.ncbi.nlm.nih.gov/32030584/

Here I share the code used in the scientific article I authored, the result of my master's degree. This study examined how soil mercury contamination affected the structure and functionality of rhizobacteria communities from Aeschynomene fluminensis and Polygonum acuminatum and how rhizobacteria mediate metal bioremediation. The strains were isolated using culture-dependent methods, identified through 16S rDNA gene sequencing, and characterized with respect to their functional traits related to plant growth promotion and resistance to metals and antibiotics. 
Keywords: Bioaccumulation; Bioremediation; Enterobacter; Microbacterium; Rhizoremediation; Toxic metal.

All the data analyses were performed using the software R 3.4.2 (R Development Core Team 2016). Bacterial counts in the host plant rhizosphere were expressed in CFU per gram of dry soil (CFU g−1) and compared using the non-parametricKruskal-Wallis test. The diversity profile of the communities was analyzed through the Hill Series, using the vegan package. The community dissimilarity was estimated by cluster analysis using the Bray-Curtis dissimilarity matrix with abundance data from the four bacterial communities (+AHg, −AHg, + PHg, and −PHg). The species composition of the communities was visualized in the Venn diagram constructed using the Online Software(http://bioinformatics.psb.ugent.be/webtools/Venn/). The similarity between the communities’ structure according to their functional traits was analyzed through the Jaccard dissimilarity index. Results from the qualitative functional characterization were expressed as positive (+) and negative (−) when a given functional trait was present or absent, respectively. Non-metric multidimensional scaling using the Bray-Curtis index was performed withthe metaMDS and Adonis function of vegan package. The indicator species were verified using the labdsv package.Co-occurrence analysis was performed using the Spearman correlation of the hmisc and corrplot packages. In the plant growth promotion and bioremediation experiments, the treated samples were compared with the control plants grown on substrates contaminated (C+Hg) or not with mercury (C−Hg), using analysis of variance followed by Dunnett’s test, with the aid of the multcomp package.
 Key Features
Bacterial Count Analysis

Bacterial counts expressed in CFU per gram of dry soil (CFU g⁻¹).
Statistical comparisons made using the non-parametric Kruskal-Wallis test.
Diversity and Community Analysis

Diversity profiles analyzed using the Hill Series (vegan package).
Community dissimilarity calculated with the Bray-Curtis dissimilarity matrix.
Visualization Tools

Venn Diagrams to visualize species composition overlaps.
Non-metric Multidimensional Scaling (NMDS) for visualizing community structures.
Similarity Indices

Community structure analyzed using the Jaccard dissimilarity index for functional traits.
Co-occurrence Analysis

Spearman correlation applied for co-occurrence analysis, visualized with the corrplot package.
Statistical Testing

ANOVA with Dunnett's test for comparing treatments with control groups.
🛠️ Technologies Used
R 3.4.2
Packages: vegan, labdsv, hmisc, corrplot, multcomp
📈 How to Run the Code
Clone the repository:

bash
Copiar código
git clone https://github.com/your-username/bacterial-community-analysis.git
cd bacterial-community-analysis
Install the necessary packages in R:

r
Copiar código
install.packages(c("vegan", "labdsv", "hmisc", "corrplot", "multcomp"))
Run the analysis scripts:

r
Copiar código
source("analysis_script.R")
📄 References
Software: R Project
Venn Diagram Tool: UGent Webtools
