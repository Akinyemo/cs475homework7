#!/bin/bash
for t in 32 64 128 256 512 1024
do
        for b in 8 16 32
        do
                g++  -DNMB=$t -DLOCAL_SIZE=$b  -o first first.cpp /usr/local/apps/cuda/10.1/lib64/libOpenCL.so.1.1  -lm -fopenmp
                ./first

        done
done
