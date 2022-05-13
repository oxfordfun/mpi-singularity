#!/bin/bash
#SBATCH --job-name=dppc-p1
#SBATCH --time=24:00:00
#SBATCH --output dppc.log
#SBATCH --error dppc.err
#SBATCH --nodes=32
#SBATCH --ntasks-per-node=4

#Load desired
module purge
module load mpi/openmpi-3.1.4


# Submit the job using mpirun
mpirun -np 128 singularity exec --bind /mnt/ceph/scratch/namd_prod_demo_run:/run /mnt/ceph/scratch/images/md.sif namd2 /run/dppc-p1.conf > dppc-p1.out
