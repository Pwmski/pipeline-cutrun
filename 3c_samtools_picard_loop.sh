#!/bin/bash

ls *.sam | cut -d . -f 1 | sort | uniq \
    | while read id; do \

       samtools view -@7 -S -b ${id}.sam > ${id}.bam
	   samtools sort -@7 ${id}.bam -o /bam_sam_IP/bam_sorted/${id}_sorted.bam
	   
	   picard MarkDuplicates \
      REMOVE_DUPLICATES=true \
      INPUT=/bam_sam_IP/bam_sorted/${id}_sorted.bam \
      OUTPUT=/bam_sam_IP/bam_sorted_rmvdup/${id}_sorted_rmvdups.bam \
      METRICS_FILE=/bam_sam_IP/bam_sorted_rmvdup/${id}_sorted_rmvdups.log \
	  
	  samtools index /bam_sam_IP/bam_sorted_rmvdup/${id}_sorted_rmvdups.bam


      done
