#!/bin/bash
#SBATCH --job-name=dppc-p1
#SBATCH --time=24:00:00
#SBATCH --output dppc.log
#SBATCH --error dppc.err
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=8

#Load desired
#module use /apps/eb/modulefiles/all
#module load NAMD/2.14-foss-2019b-mpi
#
module purge
module load OpenMPI/3.1.3-GCC-8.2.0-2.31.1

# Submit the job using mpirun
mpirun -np 32 singularity exec --bind /home/vol04/scarf1084/namd_prod_demo_run_x86:/run_x86  /home/vol04/scarf1084/images/md-centos-openmpi_x86.sif namd2 /run_x86/dppc-p1.conf > dppc-p1.out
