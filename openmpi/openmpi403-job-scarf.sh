#!/bin/bash
#SBATCH --job-name singularity-mpi
#SBATCH -N 4 # total number of nodes
#SBATCH --output openmpi-%j.out
#SBATCH --time=00:05:00 # Max execution time

module purge
module load OpenMPI/4.0.3-GCC-9.3.0

mpirun -np 4 singularity exec openmpi4.0.3.sif /opt/mpitest
