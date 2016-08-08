#!/bin/bash
#SBATCH -t 06:00:00
#SBATCH -n 1
#SBATCH -p normal

SAVEDIR="$WORK/bayes_speedtest/input"


files-list --quiet --limit 1000 -S data.iplantcollaborative.org shared/syngenta_sim/BEDBIMFAM_DE | while read line; do echo Downloading "$line"; files-get -S data.iplantcollaborative.org shared/syngenta_sim/BEDBIMFAM_DE/"$line" -N "$SAVEDIR"/"$line"; done
