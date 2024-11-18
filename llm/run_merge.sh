#!/bin/bash
python merge_tp_and_pp_params.py --model_name_or_path ./checkpoints/llama_pretrain_ckpts/checkpoint-5000/ --device mlu --pp 0 --tp 8
