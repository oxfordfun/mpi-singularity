#!/bin/bash
#SBATCH --job-name singularity-mpi
#SBATCH -N 4 # total number of nodes
#SBATCH --output mpich-%j.out
#SBATCH --time=00:05:00 # Max execution time

module load mpi/mpich-3.2-x86_64

mpirun -n 4 singularity exec mpich3-2.sif /opt/mpitest
