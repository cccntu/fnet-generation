
* save bert config and tokenizer in MODEL_DIR
* then run: (using a small dataset as test)
```
./run_mlm_flax_f_bert.py \
    --output_dir="${MODEL_DIR}" \
    --model_type="roberta" \
    --config_name="${MODEL_DIR}" \
    --tokenizer_name="${MODEL_DIR}" \
    --dataset_name="wikitext" \
    --dataset_config_name="wikitext-2-v1" \
    --max_seq_length="128" \
    --weight_decay="0.01" \
    --per_device_train_batch_size="128" \
    --per_device_eval_batch_size="128" \
    --learning_rate="3e-4" \
    --warmup_steps="1000" \
    --overwrite_output_dir \
    --pad_to_max_length \
    --num_train_epochs="18" \
    --adam_beta1="0.9" \
    --adam_beta2="0.98" \
    --push_to_hub
```
