#!/bin/bash
export CUDA_VISIBLE_DEVICES=1 &&
source ./env/bin/activate &&
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64/ &&
nohup python3 squad_ru_api.py > ./squad_ru.log &
