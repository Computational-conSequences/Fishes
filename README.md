# Fishes
Finding pseudogenes in fish genomes

## Disclaimer: use at your own risk. No guarantees whatsoever. We present these to try and ensure reproducibility of our work.

## Downloading genomes:
To download the fish genomes we worked with, we used NCBI's "datasets" and "dataformat" commands from:
https://www.ncbi.nlm.nih.gov/datasets/docs/v2/command-line-tools/download-and-install/

These can be installed, in a mac, suing the 'installNCBIcli.zsh' script found in the https://github.com/Computational-conSequences/NCBIGenomes repository.

The commands used, also from the https://github.com/Computational-conSequences/NCBIGenomes repository:
```bash
zsh ~/Programitas/GENOMEDB/DownLoad/DownLoadNCBI/bringMetadata.zsh Actinopterygii
zsh ~/Programitas/GENOMEDB/DownLoad/DownLoadNCBI/bringGenomes.zsh Actinopterygii
```

The order is important, the first command downloads the information about these genomes, producing a list of identifiers to then be used to download the genomes, and organize the files in such genomes, under specific directories that make it easier for our downstream analyses to proceed.

## Downloading sequences of proteins of interest for the project:
```bash
xxxx
```

## formating blast genome databases:
To format the databases, we have produced a buildBlastDB.zsh script, which should be run after downloading the genomes, since it expects the dorectory fna-Actinopterygii to be there, and contains this loop:

```bash
for FILE in fna-Actinopterygii/GC*
do
    makeblastdb \
        -in $FILE \
        -dbtype nucl \
        -out blastDB/$FILE:t:r:r \
        -title $FILE:t:r:r
        -parse_seqids
done
```
