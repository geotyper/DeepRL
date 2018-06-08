#!/usr/bin/env bash
#export CUDA_VISIBLE_DEVICES=0
GPUs=(0 1 2 3)
for i in $(seq 0 3); do
    export CUDA_VISIBLE_DEVICES=${GPUs[$i]}
    sleep 4s
    nohup py dist_rl.py --ind1 $1 --ind2 $i >| ice_cliff.txt &
done

#export CUDA_VISIBLE_DEVICES=1
#for i in $(seq 0 4); do
#    nohup python dist_rl.py --ind1 1 --ind2 $i >| gpu.txt &
#done
