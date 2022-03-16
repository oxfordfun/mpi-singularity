#!/bin/bash
#SBATCH --job-name=refl1dTest   # create a name for your job
#SBATCH --nodes=32                # node count

#SBATCH --time=00:10:00          # total run time limit (HH:MM:SS)
#SBATCH --output refl1dTest-%j.out

module purge
module load mpi/mpich-3.2-x86_64 

#mpirun -np 4 singularity exec /home/vol04/scarf1084/images/mpi4py-3.1.4.img /opt/mpitest

mpirun -np 128 singularity exec --bind /home/y1113254/Code/mpi-singularity:/test /home/y1113254/images/mpi4py-mpich-refl1d.sif python3 /test/scripts/align_magnetic_test.py

