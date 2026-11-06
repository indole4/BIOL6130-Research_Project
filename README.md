# BIOL6130-Research_Project

## Extended abstract

Marsupials in Australia and the Americas vary in diet, body mass and foraging stratum. I tested whether marsupial species differ more in their traits in Australia than Americas and whether the observed differences fall outside expectations from phylogenetic null model. I compared 129 Australian and 58 American species using mean Gower distances based on body mass, foraging stratum and diet. The results shows that the mean Gower distance is a little bit lower in Australia, contary to my hypothesis. Within same dietary groups, the direction of the contrast varies. In plant feeders and vertebrate feeders, Australian marsupials shows bigger inner difference, but in other groups, American marsupials shows bigger difference. And according to the phylogentic model, it shows that the overall difference and all four diet group fell in the central 95% of their respective null distributions. It shows that the phylogentic model can fit these differences. This result shows that the higher functional diversity in Australia is restricted to specific diet patterns. Even in differences are biggest, the values ​​remain within the range expected under a phylogenetic null model. It suggests that ecological opportunity is not the most significant reason in the different radiation in Australian and American marsupials.


## To reproduce this project

Clone this repository and open `6130_project.Rproj` in RStudio. Restart R and
run all commands from the project root, the directory containing `final.Rmd`.

The analysis was run with R 4.6.0 and Pandoc 3.8.3. Package versions used
were tidyverse 2.0.0, ape 5.8.1, cluster 2.1.8.2, phytools 2.5.2,
scales 1.4.0, knitr 1.51, and rmarkdown 2.31.

On a new R installation, install the required packages once:

```r
install.packages(
  c("tidyverse", "ape", "cluster", "phytools", "scales", "knitr", "rmarkdown"),
  repos = "https://cloud.r-project.org"
)
```

### 2. Prepare the data

The analysis uses three files in `source/`:

- `MamFuncDat.txt` contains the species traits.
- `MDD_v2.5_6904species.csv` supplies taxonomic and geographic information.
- `taxonomy_mamPhy_5911species_toPublish.csv` matches species to tree tips.

On the first run, download  the tree archive from VertLife,
checks the archive, and extracts 10,000 `.tre` files into
`Completed_5911sp_topoCons_FBDasZhouEtAl/` under the root. The tree data are from
[Upham, Esselstyn and Jetz (2019)](https://data.vertlife.org/mammaltree/Completed_5911sp_topoCons_FBDasZhouEtAl.zip).

Or run `download.R` under root.

Then run `final.rmd`, when knit, there should be plots output in the folder `figures_for_poster` under root.

## Data sources and licences

1. EltonTraits 1.0 — mammalian functional traits
   Wilman, Belmaker, Simpson, de la Rosa, Rivadeneira and Jetz compiled the EltonTraits database from published sources. This project use the file `MamFuncDat.txt` for traits. This dataset is released under CC0 1.0 Universal. [Wilman et al. (2014)](https://doi.org/10.1890/13-1917.1).

2. Mammal Diversity Database v2.5 — taxonomy and geographic distributions
   This project uses `MDD_v2.5_6904species.csv` from version 2.5 to match scientific names, check extinction status and identify species recorded in Australia or the Americas. The release is licensed under CC4.0. [Mammal Diversity Database (2026), version 2.5, Zenodo](https://doi.org/10.5281/zenodo.21654811).

3. Mammalian phylogenies and tree taxonomy

   i. Phylogenetic trees
   
   ii.[Taxonomic crosswalk](https://github.com/n8upham/MamPhy_v1/blob/master/_DATA/taxonomy_mamPhy_5911species_toPublish.csv), used to links species names to tree-tip labels and taxonomic groups. 



## AI declaration

In this project, chatGPT used for coding and the strusture management.
