# Fishes
Finding pseudogenes in fish genomes

## Downloading genomes:
To download the fish genomes we worked with, we used NCBI's "datasets" and "dataformat" commands from:
https://www.ncbi.nlm.nih.gov/datasets/docs/v2/command-line-tools/download-and-install/

These can be installed, in a mac, suing the 'installNCBIcli.zsh' script found in the https://github.com/Computational-conSequences/NCBIGenomes repository.

The commands used, also from the https://github.com/Computational-conSequences/NCBIGenomes repository:
1. zsh ~/Programitas/GENOMEDB/DownLoad/DownLoadNCBI/bringMetadata.zsh Actinopterygii
2. zsh ~/Programitas/GENOMEDB/DownLoad/DownLoadNCBI/bringGenomes.zsh Actinopterygii

The order is important, the first command downloads the information about these genomes, producing a list of identifiers to then be used to download the genomes, and organize the files in such genomes, under specific directories that make it easier for our downstream analyses to proceed.

## Downloading sequences of proteins of interest for the project:
