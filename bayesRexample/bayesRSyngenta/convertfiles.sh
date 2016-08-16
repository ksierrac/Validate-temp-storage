#!/bin/bash
#SBATCH -t 02:00:00
#SBATCH -n 1
#SBATCH -p development

ls $WORK/bayes_speedtest/input | while read line; do
        if [ ${line: -4} == ".fam" ]
        then
                python $WORK/bayes_speedtest/fam_pheno_convert.py -i $WORK/bayes_speedtest/input/"$line"
        fi
done;
