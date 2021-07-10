python run_summarization_flax.py \
  --output_dir ${OUTPUT_DIR} \
  --model_name_or_path ${MODEL_DIR} \
  --tokenizer_name ${MODEL_DIR} \
  --dataset_name="cnn_dailymail" --dataset_config_name='1.0.0' \
  --do_train --do_eval --do_predict --predict_with_generate \
  --num_train_epochs 6 \
  --learning_rate "1e-3" --warmup_steps 0 \
  --per_device_train_batch_size 16 \
  --per_device_eval_batch_size 16 \
  --overwrite_output_dir \
  --max_source_length 512 --max_target_length 128 \
  --adafactor --logging_steps=25 --eval_steps=5000 --sanity_check_steps=100 \
  --num_train_epochs=200 --max_steps=262144
  #--push_to_hub
