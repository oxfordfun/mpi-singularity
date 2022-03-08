process say_hello {
    publishDir 'results', mode: 'copy'

    cpus 1

    """
    echo "Running Hello ..."
    
    mpirun -np 1 singularity exec openmpi3-1-4.sif /opt/mpitest    
 
    """
}
