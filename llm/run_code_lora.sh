python -m paddle.distributed.launch --devices '0,1,2,3,4,5,6,7' \
                                    --log_dir ./log_finetune/code_lora \
                                    finetune_generation.py \
                                    llama/llama_lora_argument.json \
                                    --output_dir ./output/code/lora \
                                    --logging_dir ./log_code_lora/code/lora \
                                    --dataset_name_or_path /workspace/dataset/private/dataset/eng_data/data_code \
                                    2>&1 | tee log_lora_code
