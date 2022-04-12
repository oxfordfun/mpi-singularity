#!/bin/bash
#SBATCH --job-name=dppc-p1
#SBATCH --time=24:00:00
#SBATCH --output dppc.log
#SBATCH --error dppc.err
#SBATCH --nodes=32
#SBATCH --ntasks-per-node=4

#Load desired
module purge
module load mpi/openmpi-x86_64


# Submit the job using mpirun
mpirun -np 128 singularity exec --bind /mnt/ceph/scratch/namd_prod_demo_run_x86:/run_x86 /home/y1113254/images/md-centos-openmpi_x86.sif namd2 /run_x86/dppc-p1.conf > dppc-p1.out
