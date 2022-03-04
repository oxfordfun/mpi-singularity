#!/bin/bash
#SBATCH --job-name singularity-mpi
#SBATCH -N 4 # total number of nodes
#SBATCH --output openmpi-%j.out
#SBATCH --time=00:05:00 # Max execution time

module load OpenMPI/3.1.4-GCC-8.3.0
module list

mpirun -np 4 singularity exec openmpi3-1-4.sif /opt/mpitest
