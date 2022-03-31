#!/bin/bash
#
#SBATCH --ntasks 256            # No. of cores
#SBATCH --nodes=32              # No. of nodes
#SBATCH --mem=2000MB            # memory per node
#SBATCH -o slurm.%N.%j.out      # STDOUT
#SBATCH -t 0:05:00              # execution time (D-HH:MM)
#SBATCH --partition=cpu         # partition name

module purge
module load NAMD/2.14-foss-2020a-mpi
srun --mpi=pmix namd2 ./apoa1.namd
