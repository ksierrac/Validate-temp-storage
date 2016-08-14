#!/bin/bash
#SBATCH -t 01:00:00
#SBATCH -n 1
#SBATCH -p development

mkdir $WORK/AlphaSim
mkdir $WORK/AlphaSim/Chromosomes
mkdir $WORK/AlphaSim/Chromosomes/Chromosome1
mkdir $WORK/AlphaSim/Chromosomes/Chromosome2
mkdir $WORK/AlphaSim/Selection
mkdir $WORK/AlphaSim/Selection/SelectionFolder1
mkdir $WORK/AlphaSim/SimulatedData
mkdir $WORK/AlphaSim/SimulatedData/AllIndividualsSnpChips

SAVEDIR1="$WORK/AlphaSim"
SAVEDIR2="$WORK/AlphaSim/Chromosomes"
SAVEDIR3="$WORK/AlphaSim/Selection"
SAVEDIR4="$WORK/AlphaSim/SimulatedData"
SAVEDIR5="$WORK/AlphaSim/Chromosomes/Chromosome1"
SAVEDIR6="$WORK/AlphaSim/Chromosomes/Chromosome2"
SAVEDIR7="$WORK/AlphaSim/Selection/SelectionFolder1"
SAVEDIR8="$WORK/AlphaSim/SimulatedData/AllIndividualsSnpChips"

JOBPATH="ksierrac/archive/jobs/job-2999209127587474970-242ac1110-0001-007"

cd $SAVEDIR1
files-list -S data.iplantcollaborative.org $JOBPATH/AlphaSim | while read line; do if [[ ! -d $line ]]; then files-get -S data.iplantcollaborative.org $JOBPATH/AlphaSim/"$line"; fi done

cd $SAVEDIR2
files-list -S data.iplantcollaborative.org $JOBPATH/AlphaSim/Chromosomes | while read line; do if [[ ! -d $line ]]; then files-get -S data.iplantcollaborative.org $JOBPATH/AlphaSim/Chromosomes/"$line"; fi done

cd $SAVEDIR3
files-list -S data.iplantcollaborative.org $JOBPATH/AlphaSim/Selection | while read line; do if [[ ! -d $line ]]; then files-get -S data.iplantcollaborative.org $JOBPATH/AlphaSim/Selection/"$line"; fi done

cd $SAVEDIR4
files-list -S data.iplantcollaborative.org $JOBPATH/AlphaSim/SimulatedData | while read line; do if [[ ! -d $line ]]; then files-get -S data.iplantcollaborative.org $JOBPATH/AlphaSim/SimulatedData/"$line"; fi done

cd $SAVEDIR5
files-list -S data.iplantcollaborative.org $JOBPATH/AlphaSim/Chromosomes/Chromosome1 | while read line; do files-get -S data.iplantcollaborative.org $JOBPATH/AlphaSim/Chromosomes/Chromosome1/"$line"; done

cd $SAVEDIR6
files-list -S data.iplantcollaborative.org $JOBPATH/AlphaSim/Chromosomes/Chromosome2 | while read line; do files-get -S data.iplantcollaborative.org $JOBPATH/AlphaSim/Chromosomes/Chromosome2/"$line"; done

cd $SAVEDIR7
files-list -S data.iplantcollaborative.org $JOBPATH/AlphaSim/Selection/SelectionFolder1 | while read line; do files-get -S data.iplantcollaborative.org $JOBPATH/AlphaSim/Selection/SelectionFolder1/"$line"; done

cd $SAVEDIR8
files-list -S data.iplantcollaborative.org $JOBPATH/AlphaSim/SimulatedData/AllIndividualsSnpChips | while read line; do files-get -S data.iplantcollaborative.org $JOBPATH/AlphaSim/SimulatedData/AllIndividualsSnpChips/"$line"; done