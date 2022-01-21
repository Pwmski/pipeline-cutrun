#!/bin/bash

outPath="/macs2/peak_rmvdups_broad/" \

ls *rmvdups.bam | cut -d _ -f 1 | sort | uniq \
    | while read id; do \

      macs2 callpeak -t ${id}_sorted_rmvdups.bam -f BAMPE -g 2913022398 -q 0.1 --broad --broad-cutoff 0.1 -B --SPMR -n macs2rmvdups_${id} --outdir $outPath 2>${outPath}/macs2rmvdups_${id}.log

     done
