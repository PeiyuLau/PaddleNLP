#!/bin/bash

python ../examples/benchmark/wiki_lambada/eval.py --model_name_or_path checkpoints/llama_pretrain_ckpts/checkpoint-5000/ \
                                               --batch_size 4 \
                                               --device mlu \
                                               --eval_path /workspace/dataset/private/dataset/wiki_lambada/lambada_test.jsonl \
                                               --tensor_parallel_degree 1 --cloze_eval 2>&1 | tee log_lambada_eval
