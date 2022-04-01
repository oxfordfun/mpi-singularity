#!/bin/bash
#SBATCH --job-name singularity-mpi
#SBATCH -N 4 # total number of nodes
#SBATCH --output openmpi-%j.out
#SBATCH --time=00:05:00 # Max execution time

module purge
module load OpenMPI/3.1.3-GCC-8.2.0-2.31.1

mpirun -np 4 singularity exec openmpi3.1.3.sif /opt/mpitest
