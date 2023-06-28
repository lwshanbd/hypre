#!/bin/bash
 
#SBATCH -o hypre-test1.out
#SBATCH -e hypre-test1.err
#SBATCH -solver 1 -Pcypress_a100
#SBATCH --gres=gpu:1
#SBATCH -N 4

module load baodimpi


mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P2 2 1 -interptype 0 -Pmx 0 -cljp -27pt \
 > coarsening.out.0

mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P2 2 1 -interptype 0 -Pmx 0 -ruge -27pt \
 > coarsening.out.1

mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P2 2 1 -interptype 0 -Pmx 0 -ruge3c -gm -27pt \
 > coarsening.out.2

mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P2 2 1 -interptype 0 -Pmx 0 -falgout -27pt \
 > coarsening.out.3

mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P 2 2 1 -interptype 3 -Pmx 0 -mm_vendor 0  -pmis -27pt \
 > coarsening.out.4

mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P2 2 1 -interptype 0 -Pmx 0 -27pt \
 > coarsening.out.5

 mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P 2 2 1 -interptype 3 -Pmx 0 -falgout -27pt \
 > coarsening.out.6

mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P 2 2 1 -interptype 3 -Pmx 0 -mm_vendor 0  -gm -27pt \
 > coarsening.out.7