#!/bin/bash

ls *.sam | cut -d . -f 1 | sort | uniq \
    | while read id; do \

       samtools view -@7 -S -b ${id}.sam > ${id}.bam
	   samtools sort -@7 ${id}.bam -o /home/pwmski/oxbioinf/cutrun2_h4k16ac/bam_sam_IP/bam_sorted/${id}_sorted.bam
	   
	   picard MarkDuplicates \
      REMOVE_DUPLICATES=true \
      INPUT=/home/pwmski/oxbioinf/cutrun2_h4k16ac/bam_sam_IP/bam_sorted/${id}_sorted.bam \
      OUTPUT=/home/pwmski/oxbioinf/cutrun2_h4k16ac/bam_sam_IP/bam_sorted_rmvdup/${id}_sorted_rmvdups.bam \
      METRICS_FILE=/home/pwmski/oxbioinf/cutrun2_h4k16ac/bam_sam_IP/bam_sorted_rmvdup/${id}_sorted_rmvdups.log \
	  
	  samtools index /home/pwmski/oxbioinf/cutrun2_h4k16ac/bam_sam_IP/bam_sorted_rmvdup/${id}_sorted_rmvdups.bam


      done


ls *.sam | cut -d . -f 1 | sort | uniq \
    | while read id; do \

       samtools view -@7 -S -b ${id}.sam > ${id}.bam
	   samtools sort -@7 ${id}.bam -o /home/pwmski/oxbioinf/cutrun2_h4k16ac/bam_sam_IP/bam_sorted/${id}_sorted.bam
	   samtools index /home/pwmski/oxbioinf/cutrun2_h4k16ac/bam_sam_IP/bam_sorted/${id}_sorted.bam


      done

ls *.bam | cut -d . -f 1 | sort | uniq \
    | while read id; do \
	   
	  picard MarkDuplicates \
      REMOVE_DUPLICATES=true \
      INPUT=/home/pwmski/oxbioinf/cutrun2_h4k16ac/bam_sam_IP/bam_sorted/${id}_sorted.bam \
      OUTPUT=/home/pwmski/oxbioinf/cutrun2_h4k16ac/bam_sam_IP/bam_sorted_rmvdup/${id}_sorted_rmvdups.bam \
      METRICS_FILE=/home/pwmski/oxbioinf/cutrun2_h4k16ac/bam_sam_IP/bam_sorted_rmvdup/${id}_sorted_rmvdups.log \
	  
	  samtools index /home/pwmski/oxbioinf/cutrun2_h4k16ac/bam_sam_IP/bam_sorted_rmvdup/${id}_sorted_rmvdups.bam

      done
	  
	  
	  picard MarkDuplicates \
      REMOVE_DUPLICATES=true \
      INPUT=/home/pwmski/oxbioinf/cutrun2_h4k16ac/bam_sam_IP/bam_sorted/s28_sorted.bam \
      OUTPUT=/home/pwmski/oxbioinf/cutrun2_h4k16ac/bam_sam_IP/bam_sorted_rmvdup/s28_sorted_rmvdups.bam \
      METRICS_FILE=/home/pwmski/oxbioinf/cutrun2_h4k16ac/bam_sam_IP/bam_sorted_rmvdup/s28_sorted_rmvdups.log \
	  