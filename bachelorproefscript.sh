#!/bin/bash
iqtree -s HCV.FST -m TVM


faToVcf HCV.FST HCV.vcf


usher -t HCV.newick -v HCV.vcf -o HCV.pb -d preprocessingPhase/


mafft --addfragments AJ291279 AF009606 > to-place.fasta


faToVcf to-place.fasta to-place.vcf


usher -i HCV.pb -v to-place.vcf -p -d placementUsher/