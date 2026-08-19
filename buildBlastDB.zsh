mkdir -p blastDB
for FILE in fna-Actinopterygii/GC*
do
    makeblastdb \
        -in $FILE \
        -dbtype nucl \
        -out blastDB/$FILE:t:r:r \
        -title $FILE:t:r:r
        -parse_seqids
done
