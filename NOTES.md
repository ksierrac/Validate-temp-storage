# Links and notes for using Stampede and Agave

[Validate ReadTheDocs guide](http://validate-10.readthedocs.io/en/latest/index.html)


Running a job through parametric launcher: sbatch -n 16 -t 48:00:00 $TACC_LAUNCHER_DIR/launcher.slurm 

[Official JSON job submission guide](https://agaveapi.co/documentation/tutorials/job-management-tutorial/)

[User experience test #1 notes - full workflow with fastlmm](https://github.com/ksierrac/Validate-temp-storage/blob/master/UXnotes.txt)

Stampede notes:

- Automatically looks for a file called paramlist with necessary parameters
- [Table of flags](https://portal.tacc.utexas.edu/user-guides/stampede#running-slurm-jobcontrol-sbatch)
- Run with a dependency on a previously submitted job: sbatch --dependency=afterok:jobid job_script_name
- Cancel: scancel jobid
- Status: squeue -u username
- [Example sbatch for Winnow](https://github.com/ksierrac/Validate-temp-storage/tree/master/winnow_ex.sh)
- [Example sbatch using Agave for BayesR test](https://github.com/ksierrac/Validate-temp-storage/blob/master/readlineex.sh)

Agave notes:
- auth-tokens-refresh -S
- jobs-submit -F test-job.json
- jobs-status *jobnumber*
- jobs-history *jobnumber*
- files-upload -S data.iplantcollaborative.org -F localpath/filename $CYVERSEUSERNAME/remotepath/foldername
- apps-addupdate -F localpath/appfilename.json
- files-get -S data.iplantcollaborative.org /remotepath/filename
- files-list -S data.iplantcollaborative.org remotepath/foldername
- files-upload -S data.iplantcollaborative.org -F local.file remotepath/foldername
- apps-addupdate -F localpath/appfilename.json

Submit a job through Agave:

[Cyverse example](https://github.com/iPlantCollaborativeOpenSource/cyverse-sdk/blob/master/docs/iplant-first-app-job.md)

[Puma example](https://github.com/ksierrac/Puma/blob/master/test-job.json)


Install an app on Agave:

[Installation tutorial](https://github.com/iPlantCollaborativeOpenSource/cyverse-sdk/blob/master/docs/iplant-first-app.md) | 
[Template tutorial](https://github.com/iPlantCollaborativeOpenSource/cyverse-sdk/blob/master/docs/iplant-first-app-argpass.md)


[JSON generator](http://agaveapi.co/tools/app-builder/) | 
[JSON parser](http://jsonlint.com/)

[Puma JSON](https://github.com/ksierrac/Puma/Puma.json) | 
[Puma wrapper](https://github.com/ksierrac/Puma/puma_wrapper.sh)

[BayesR JSON](https://github.com/CyVerse-Validate/Stampede-Files/tree/master/bayesR-2.00/bayesR.json) | 
[BayesR wrapper](https://github.com/CyVerse-Validate/Stampede-Files/tree/master/bayesR-2.00/wrapper.sh)
