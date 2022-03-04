#! /bin/bash

module load Nextflow/21.08.0
module load OpenMPI/3.1.4-GCC-8.3.0

nextflow run test.nf -profile vcluster 
