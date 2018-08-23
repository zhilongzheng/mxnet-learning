#!/usr/bin/env bash

instance_name=$1  # Name of docker instance
cpus=$2  # Assignment of dedicated CPUs, e.g., 2,3,4,5

docker run -it --cpuset-cpus="$2" -v /home/ubuntu/projects/mxnet-learning/incubator-mxnet:/mxnet-src --name $1 -d mxnet-zzl-2/python bash

#make -j 16 USE_OPENCV=1 USE_BLAS=openblas USE_DIST_KVSTORE=1