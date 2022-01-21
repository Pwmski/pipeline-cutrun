#!/bin/bash

#input filename at the end of the command

for file in *fastq.gz; do

fastqc -f fastq -t 7 -o /home/pwmski/oxbioinf/cutrun2_h3k14ac/fastq/FASTQC_reports $file

done

ls *gz | cut -d _ -f 1-2 | sort | uniq | while read id; do

fastqc -f fastq -t 7 -o /home/pwmski/oxbioinf/cutrun2_h3k14ac/fastq/FASTQC_reports/ ${id}

done
