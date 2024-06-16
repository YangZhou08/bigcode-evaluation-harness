accelerate launch --num_processes 8 main.py \
  --model meta-llama/Meta-Llama-3-8B-Instruct \
  --tasks mbpp \
  --do_sample False \
  --n_samples 1 \
  --batch_size 1 \
  --max_length_generation 2048 \
  --allow_code_execution

accelerate launch --num_processes 8 main.py \
  --model meta-llama/Meta-Llama-3-8B \
  --tasks mbpp \
  --do_sample False \
  --n_samples 1 \
  --batch_size 1 \
  --max_length_generation 2048 \
  --allow_code_execution