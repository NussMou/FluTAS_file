#!/bin/bash
#SBATCH --job-name=tmp
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=128
#SBATCH --cpus-per-task=1
#SBATCH --mem=205g
#SBATCH --time=01:00:00
#SBATCH --output=%j.out


export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ROOT/opt/lib
export PATH=$PATH:$ROOT/opt/bin
export I_MPI_F90=ifort
module purge
module load intel/2021.3.0  
module load intelmpi/2021.3.0-intel2021.3.0
cd <now_path>
time mpirun -np 512 /home/hpc/b154dc/b154dc22/FluTAS/FluTAS/src/flutas.two_phase_ht