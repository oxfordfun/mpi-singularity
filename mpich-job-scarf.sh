#!/bin/bash
#SBATCH --job-name singularity-mpi
#SBATCH -N 4 # total number of nodes
#SBATCH --output mpich-%j.out
#SBATCH --time=00:05:00 # Max execution time

module load MPICH/3.2-GCC-7.2.0-2.29

mpirun -n 4 singularity exec mpich3-2.sif /opt/mpitest
