#!/bin/bash

ls *r1* | cut -d _ -f 1 | sort | uniq \
    | while read id; do \

        bowtie2 -p 7 --local --very-sensitive-local --no-unal --no-mixed --no-discordant --minins 10 --maxins 700 --trim5 9 -x GRCh38_noalt_as -1 ${id}_r1.fastq.gz -2 ${id}_r2.fastq.gz -S /bam_sam_IP/${id}.sam 2>/bam_sam_IP/${id}_bowtie.log

      done


