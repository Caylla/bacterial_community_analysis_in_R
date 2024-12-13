
![mercury](https://github.com/user-attachments/assets/75d49c42-e83c-4e13-a902-60c44824baac)

https://pubmed.ncbi.nlm.nih.gov/32030584/

Here I share the code used in the scientific article I authored, the result of my master's degree. This study examined how soil mercury contamination affected the structure and functionality of rhizobacteria communities from Aeschynomene fluminensis and Polygonum acuminatum and how rhizobacteria mediate metal bioremediation. The strains were isolated using culture-dependent methods, identified through 16S rDNA gene sequencing, and characterized with respect to their functional traits related to plant growth promotion and resistance to metals and antibiotics. 
Keywords: Bioaccumulation; Bioremediation; Enterobacter; Microbacterium; Rhizoremediation; Toxic metal.

# 📊 Bacterial Community Analysis in R

This repository contains scripts and workflows for analyzing bacterial community data using R. The analyses include statistical comparisons, diversity profiling, community dissimilarity, and visualization tools for ecological data.

## 📝 Project Overview

This project focuses on:
- Analyzing bacterial counts in the rhizosphere of host plants.
- Evaluating community diversity and dissimilarity.
- Visualizing community composition and functional traits.
- Conducting statistical tests and correlation analyses.

## 🧰 Tools and Technologies

- **R 3.4.2**
- **Packages Used**:
  - `vegan`: For diversity analysis, NMDS, and community dissimilarity.
  - `labdsv`: For indicator species analysis.
  - `hmisc` and `corrplot`: For correlation and visualization.
  - `multcomp`: For ANOVA with Dunnett's test.

## 🔬 Analyses Included

1. **Bacterial Count Analysis**  
   - Expressed in CFU per gram of dry soil (CFU g⁻¹).
   - Compared using the non-parametric **Kruskal-Wallis test**.

2. **Diversity Analysis**  
   - Diversity profiles analyzed through the **Hill Series** using the `vegan` package.

3. **Community Dissimilarity**  
   - Calculated using the **Bray-Curtis dissimilarity matrix**.
   - Visualized through **cluster analysis** and **NMDS**.

4. **Functional Trait Analysis**  
   - Assessed with the **Jaccard dissimilarity index** for presence/absence data.

5. **Co-occurrence Analysis**  
   - Conducted using **Spearman correlation** and visualized with `corrplot`.

6. **Plant Growth Promotion and Bioremediation Experiments**  
   - Analyzed using **ANOVA** followed by **Dunnett's test**.

## 📊 Visualizations

- **Venn Diagrams**: Visualize species composition overlaps.  
- **NMDS Plots**: Represent community dissimilarities.  
- **Correlation Plots**: Display co-occurrence relationships.

## 📦 Installation

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/your-username/bacterial-community-analysis.git
   cd bacterial-community-analysis
   
## 📄 References

- **R Project**: https://www.r-project.org/
 **Venn Diagram Tool**: UGent Webtools
