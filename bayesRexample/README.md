#Run syngenta data through bayesR

- To use BayesR, first run this in the src or bin folder (I had to run it in bin) -> ifort -O3 -static -openmp -o bayesRv2 RandomDistributions.f90 baymodsv2.f90 bayesRv2.f90
- Make new directory and place all these files in it
- Run getfiles.sh to gather files from the data store
- Run convertfiles.sh to adjust data appropriately. Either wait until getfiles.sh job is done running, or run convert job with a dependency on getfiles.sh -> sbatch --dependency=afterok:jobid job_script_name
- Run bayesRparamlist.sh to create the paramlist needed for parametric launcher
- From this directory, start the launcher -> sbatch -N 64 -n 128 -t 48:00:00 $TACC_LAUNCHER_DIR/launcher.slurm
