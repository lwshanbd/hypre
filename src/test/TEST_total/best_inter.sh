#!/bin/bash

my_array=(0 2 3 4 5 6 7 8 9 10 12 13 14 15 16 17 18 19 20 22 24)

# Iterate over the range from 0 to 10 using a for loop
for ((i=0; i<=24; i++))
do
    mpirun -np 4  ../ij -rhsrand -n 256 256 128 -solver 1 -P 2 2 1 -rlx 18 -interptype ${my_array[$i]} -Pmx 0 -mm_vendor 0  -pmis > 1-inter.out.${my_array[$i]}   
done