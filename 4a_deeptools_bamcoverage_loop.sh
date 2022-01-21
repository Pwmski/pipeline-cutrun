#!/bin/bash

#rmvdup
ls *rmvdups.bam | cut -d _ -f 1 | sort | uniq \
    | while read id; do \

      bamCoverage --bam ${id}_sorted_rmvdups.bam -o /home/pwmski/oxbioinf/cutrun2_h3k14ac/deeptools_bamcoverage/bigwig_rmvdups/${id}_rmvdups_h3k14ac.bw \
    --scaleFactor 1 \
    --binSize 25 \
   --normalizeUsing CPM \
    --effectiveGenomeSize 2913022398 \
    --ignoreForNormalization chrX \
    --extendReads \
    --numberOfProcessors=7 \

      done

#keep dup 
ls *sorted.bam | cut -d _ -f 1 | sort | uniq \
    | while read id; do \

      bamCoverage --bam ${id}_sorted.bam -o /home/pwmski/oxbioinf/cutrun2_h3k14ac/deeptools_bamcoverage/bigwig_keepdups/${id}_keepdups_h3k14ac.bw \
    --scaleFactor 1 \
    --binSize 25 \
    --normalizeUsing CPM \
    --effectiveGenomeSize 2913022398 \
    --ignoreForNormalization chrX \
    --extendReads \
    --numberOfProcessors=7 \

      done

      bamCoverage --bam s28_sorted_rmvdups.bam -o /home/pwmski/oxbioinf/cutrun2_h3k14ac/deeptools_bamcoverage/bigwig_rmvdups/s28_rmvdups_h3k14ac.bw \
    --scaleFactor 1 \
    --binSize 25 \
    --normalizeUsing CPM \
    --effectiveGenomeSize 2913022398 \
    --ignoreForNormalization chrX \
    --extendReads \
    --numberOfProcessors=7 \

	  