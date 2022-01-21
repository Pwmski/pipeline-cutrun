#!/bin/bash

#input filename at the end of the command

#method1 - for loop on all files with fastq.gz suffix:
for file in *fastq.gz; do

fastqc -f fastq -t 7 -o /fastq/FASTQC_reports $file

done

#method2 - while loop with retaining sample names:
ls *gz | cut -d _ -f 1-2 | sort | uniq | while read id; do

fastqc -f fastq -t 7 -o /fastq/FASTQC_reports/ ${id}

done
