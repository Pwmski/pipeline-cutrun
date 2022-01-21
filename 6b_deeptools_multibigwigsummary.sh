#!/bin/bash
	
multiBigwigSummary BED-file --BED hela_taddomains_slop.bed --bwfiles /home/pwmski/oxbioinf/cutrun2_h3k14ac/deeptools_bamcoverage/bigwig_rmvdups/*.bw --numberOfProcessors max --smartLabels --verbose --outFileName /home/pwmski/oxbioinf/cutrun2_h3k14ac/deeptools_multibigwigsumm/h3k14ac_multibw_tads.npz --outRawCounts /home/pwmski/oxbioinf/cutrun2_h3k14ac/deeptools_multibigwigsumm/h3k14ac_multibw_tads.tab
