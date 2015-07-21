# A Condo job with Rmpi

1. Run `./installRmpi.sh` to install the `Rmpi` package. You may have to first change some of the file paths in the script.
1. Move `useRmpi.script` and `Rmpijob.R` to `/work/<group>/<user>`.
2. Enter `qsub useRmpi.script` to run.
3. Use `qstat -u <user>` to check on the job or `qdel` to delete it.