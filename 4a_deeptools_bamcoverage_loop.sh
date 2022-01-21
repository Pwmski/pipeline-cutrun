#!/bin/bash

#remove duplicate bam sorted file as input
ls *rmvdups.bam | cut -d _ -f 1 | sort | uniq \
    | while read id; do \

      bamCoverage --bam ${id}_sorted_rmvdups.bam -o /deeptools_bamcoverage/bigwig_rmvdups/${id}_rmvdups.bw \
    --scaleFactor 1 \
    --binSize 25 \
   --normalizeUsing CPM \
    --effectiveGenomeSize 2913022398 \
    --ignoreForNormalization chrX \
    --extendReads \
    --numberOfProcessors=7 \

      done
