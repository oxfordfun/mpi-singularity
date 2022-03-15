#!/bin/bash
#SBATCH --job-name=refl1dTest   # create a name for your job
#SBATCH --nodes=2                # node count

#SBATCH --time=00:10:00          # total run time limit (HH:MM:SS)
#SBATCH --output refl1dTest-%j.out

#SBATCH --ntasks-per-node=4

module purge
module load MPICH/3.2-GCC-7.2.0-2.29 

#mpirun -np 4 singularity exec /home/vol04/scarf1084/images/mpi4py-3.1.4.img /opt/mpitest

mpirun -np 8 singularity exec --bind /home/vol04/scarf1084/mpi-singularity:/test /home/vol04/scarf1084/images/mpi4py-mpich-refl1d.sif python3 /test/scripts/align_magnetic_test.py



