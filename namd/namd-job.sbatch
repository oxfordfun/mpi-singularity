#!/bin/bash
#
#SBATCH --ntasks 8            # No. of cores
#SBATCH --nodes=2              # No. of nodes
#SBATCH --mem=2000MB            # memory per node
#SBATCH -o slurm-%j.out        # STDOUT
#SBATCH -t 0:05:00              # execution time (D-HH:MM)
#SBATCH --partition=scarf         # partition name

module purge
module load NAMD/2.14-foss-2019b-mpi
#srun --mpi=pmix namd2 ./apoa1.namd
mpirun -np 8 namd2 ./apoa1.namd > apoa1.out
