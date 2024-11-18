python -m paddle.distributed.launch --devices '0,1,2,3,4,5,6,7' \
                                    --log_dir ./log_finetune/math_lora 
                                    finetune_generation.py \
                                    llama/llama_lora_argument.json \
                                    --output_dir ./output/math/lora \
                                    --logging_dir ./log_math_lora/math/lora \
                                    --dataset_name_or_path /workspace/dataset/private/dataset/eng_data/data_math \
                                    2>&1 | tee log_lora_math
