#!/bin/bash

mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P 2 2 1 -rlx 0 -interptype 0 -Pmx 0 -mm_vendor 0  -pmis \
> rlxtypre.out.0

mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P 2 2 1 -rlx 1 -interptype 0 -Pmx 0 -mm_vendor 0  -pmis \
> rlxtypre.out.1

mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P 2 2 1 -rlx 3 -interptype 0 -Pmx 0 -mm_vendor 0  -pmis \
> rlxtypre.out.2

mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P 2 2 1 -rlx 4 -interptype 0 -Pmx 0 -mm_vendor 0  -pmis \
> rlxtypre.out.3

mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P 2 2 1 -rlx 6 -interptype 0 -Pmx 0 -mm_vendor 0  -pmis \
> rlxtypre.out.4

mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P 2 2 1 -rlx 8 -interptype 0 -Pmx 0 -mm_vendor 0  -pmis \
> rlxtypre.out.5

mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P 2 2 1 -rlx 13 -interptype 0 -Pmx 0 -mm_vendor 0  -pmis \
> rlxtypre.out.6

mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P 2 2 1 -rlx 15 -interptype 0 -Pmx 0 -mm_vendor 0  -pmis \
> rlxtypre.out.7

mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P 2 2 1 -rlx 16 -interptype 0 -Pmx 0 -mm_vendor 0  -pmis \
> rlxtypre.out.8

mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P 2 2 1 -rlx 17 -interptype 0 -Pmx 0 -mm_vendor 0  -pmis \
> rlxtypre.out.9

mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P 2 2 1 -rlx 18 -interptype 0 -Pmx 0 -mm_vendor 0  -pmis \
> rlxtypre.out.10
