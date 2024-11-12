python -u -m paddle.distributed.launch \
    --devices "0,1,2,3,4,5,6,7" \
    --log_dir "log/log_llama_13b_test" \
    run_pretrain.py \
    llama/pretrain-llama_13b-tp8pp1sd4_stage1_test.json 2>&1 | tee log_llama_5k_test
