process say_hello {
    publishDir 'results', mode: 'copy'

    cpus 4

    """
    echo "Running Hello ..."
    
    mpirun -np 4 singularity exec openmpi3-1-4.sif /opt/mpitest    
 
    """
}
