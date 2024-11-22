#!/bin/bash
export CNCL_IB_GID_INDEX=7

# 默认已安装的paddlepaddle 已做如下修改，如若重新安装paddlepaddle需执行下面的步骤
sed -i '116s/if \"gpu\" not in place:/if \"gpu\" not in place and \"mlu\" not in place:/' /usr/local/lib/python3.10/dist-packages/paddle/nn/functional/flash_attention.py

IPS="${1:-10.8.42.70,10.9.63.199,10.8.56.78,10.8.114.51}"

python -u -m paddle.distributed.launch \
    --devices "0,1,2,3,4,5,6,7" \
    --ips "$IPS" \
    --log_dir "log/log_llama_13b" \
    run_pretrain.py \
    llama/pretrain-llama_13b-tp8pp1sd4_stage1.json 2>&1 | tee log_llama_4nodes
