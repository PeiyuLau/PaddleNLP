#!/bin/bash
export CNCL_IB_GID_INDEX=7

IPS="${1:-10.8.42.70,10.9.63.199,10.8.56.78,10.8.114.51}"

python -u -m paddle.distributed.launch \
    --devices "0,1,2,3,4,5,6,7" \
    --ips "$IPS" \
    --log_dir "log/log_llama_13b" \
    run_pretrain.py \
    llama/pretrain-llama_13b-tp2pp1sd16_stage1.json 2>&1 | tee log_llama_4nodes
