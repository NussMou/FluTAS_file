#!/bin/bash
#SBATCH --job-name=tmp
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=72
#SBATCH --cpus-per-task=1
#SBATCH --mem=205g
#SBATCH --time=01:00:00
#SBATCH --output=%j.out


export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ROOT/opt/lib
export PATH=$PATH:$ROOT/opt/bin
export I_MPI_F90=ifort
module purge
module load intel/2021.7.0
module load intelmpi/2021.7.1
cd <now_path>
time mpirun -np 288 <ROOT>/FluTAS/src/flutas.two_phase_ht