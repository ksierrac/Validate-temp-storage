#!/bin/sh

#SBATCH -p development
#SBATCH -t 00:30:00
#SBATCH -n 15
#SBATCH -A iPlant-Collabs
#SBATCH -J test-puma

genotype_input="./data/X_test.tped"
phenotype_input="./data/X_test.tfam"
covariate_input="./data/X_cov.txt"
regressionModel="LINEAR"
penaltyMethods="LASSO"
resultsName="try1"

. ./puma_wrapper.sh