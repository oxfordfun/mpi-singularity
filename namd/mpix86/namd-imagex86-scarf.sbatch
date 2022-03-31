#!/bin/bash
#SBATCH --job-name=namdTest   # create a name for your job
#SBATCH --nodes=2                # node count

#SBATCH --time=00:10:00          # total run time limit (HH:MM:SS)
#SBATCH --output namdTest-%j.out

#SBATCH --ntasks-per-node=4

module purge
module load OpenMPI/3.1.3-GCC-8.2.0-2.31.1

#mpirun -np 4 singularity exec /home/vol04/scarf1084/images/mpi4py-3.1.4.img /opt/mpitest

mpirun -np 8 singularity exec --bind /home/vol04/scarf1084/mpi-namd/dataset/apoa1:/test /home/vol04/scarf1084/images/md-centos-openmpi_x86.sif namd2 /test/apoa1.namd > apoa1-image.out
