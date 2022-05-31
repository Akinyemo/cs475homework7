#!/bin/bash
for t in 1024 4096 16384 65536 262144 1048576 2097152 419430
do
        for b in 8 32 128
        do
                g++ -o first first.cpp /usr/local/apps/cuda/10.1/lib64/libOpenCL.so.1.1 -lm -fopenmp
                ./first -DNMB=$t -DLOCAL_SIZE=$b 
                
        done
done
