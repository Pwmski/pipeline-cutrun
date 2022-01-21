#!/bin/bash
	
multiBigwigSummary BED-file --BED hela_taddomains_slop.bed --bwfiles /deeptools_bamcoverage/bigwig_rmvdups/*.bw --numberOfProcessors max --smartLabels --verbose --outFileName /deeptools_multibigwigsumm/h3k14ac_multibw_tads.npz --outRawCounts /deeptools_multibigwigsumm/h3k14ac_multibw_tads.tab
