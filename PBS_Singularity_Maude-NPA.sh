#!/bin/bash

# name of queue
#PBS -q RES3
# 1 node, each node has 32 cores, with 1024GB of memory
#PBS -l select=1:ncpus=32:mem=1024gb
# name of job
#PBS -N parallel-maude-npa
# redirect output/error to the same file
#PBS -j oe -o /dev/null

# loading singularity
source /etc/profile.d/modules.sh
module load singularity/3.5.3

# go to the current working folder, where you run this script
cd $PBS_O_WORKDIR

# executing command in the singularity container
singularity exec /home/canhdo/singularity/maude-3.2.1_latest.sif bash test-command.sh >& out.log
