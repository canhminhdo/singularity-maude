#!/bin/sh

# 1 node, each node has 16 cores with 1024 GB of memory
#PBS -l select=1:ncpus=16:mem=1024gb

# name of job
#PBS -N Maude-test

# name of queue
#PBS -q SINGLE-4

# redirecting output and error to the same file
#PBS -j oe

# going to the current working folder, where this script is run
cd ${PBS_O_WORKDIR}

# adding the path where Maude is installed to PATH
setenv PATH /home/$USER/ogatalab/Applications/maude-3.1:${PATH}

# making an alias
alias maude maude.linux64

# running maude with a maude file
maude test.maude >& out.log