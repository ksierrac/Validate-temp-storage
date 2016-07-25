#!/bin/bash
#SBATCH -t 01:00:00
#SBATCH -n 1
#SBATCH -p normal

python $HOME/Validate/CurrentReleaseStable/Winnow_09/winnow.py --Folder $HOME/fastlmm_example --Class $HOME/SynTruth03.txt --Snp SNP --Score Pvalue --filename $HOME/winnow_output --kttype OTE --seper tab
