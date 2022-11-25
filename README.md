VIGS
====

Stand Alone version of SGN VIGS Tool

Developed on a Catalyst framework

## To add a VIGS dataset, use the following commands:

```
unzip GCA_003287315.1.zip

in emacs, replace the string >lcl| with > , if present
(otherwise, fastacmd will not work correctly)

sudo cp ncbi_dataset/data/GCA_003287315.1/cds_from_genomic.fna /export/prod/blast/databases/current/vigs/Phytophthora_cactorum_GCA_003287315.1_cds.fa

sudo makeblastdb -in Phytophthora_cactorum_GCA_003287315.1_cds.fa -dbtype nucl -out Phytophthora_cactorum_GCA_003287315.1_cds -parse_seqids

sudo bowtie-build -f /export/prod/blast/databases/current/vigs/Phytophthora_cactorum_GCA_003287315.1_cds.fa /export/prod/blast/databases/current/vigs/Phytophthora_cactorum_GCA_003287315.1_cds
```

