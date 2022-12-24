# Building dockers for Maude to run singularity with HPC

### Introduction

In order to run meta-interpreters, which a new feaure in Maude, with HPC,
we need to setup singlarity images.

Each singlarity image is cloned from a docker image that is built by using scripts in this repository.

1. `maude-3.2.1` for the latest version of Maude.
2. `maude-alpha` for using the new model checker to generate all counterexamples at once.

### Singularity with HPC

Loading singularity on HPC

`module load singularity`

Creating a singularity image from a docker image

`singularity pull docker://canhminhdo/maude-3.2.1`

Running a singularity container with the created signularity image in the interactive mode

`singularity sheel maude-3.2.1_latest.sif`

Executing a command in the singularity container

`singularity exec maude-3.2.1_latest.sif bash test-command.sh`

Submiting `PBS_Singularity_Maude-NPA.sh` to a designated queue

`qsub -q <queue-name> -M <email> -m be PBS_Singularity_Maude-NPA.sh`
