# Building dockers for Maude to run singularity with HPC

In order to run meta-interpreters, which a new feaure in Maude, with HPC,
we need to setup singlarity images.

Each singlarity image is cloned from a docker image that is built by using scripts in this repository.

1. `maude-3.2.1` for the latest version of Maude.
2. `maude-alpha` for using the new model checker to generate all counterexamples at once.
