accelerate launch --num_processes 2 main.py \
  --model meta-llama/Meta-Llama-3-8B-Instruct \
  --tasks humaneval \
  --do_sample False \
  --n_samples 1 \
  --batch_size 1 \
  --max_length_generation 512 \
  --enable_epatches \
  --check \
  --griffin \
  --allow_code_execution

# accelerate launch --num_processes 4 main.py \
#   --model meta-llama/Meta-Llama-3-8B \
#   --limit 50 \
#   --tasks mbpp \
#   --do_sample False \
#   --n_samples 1 \
#   --batch_size 1 \
#   --max_length_generation 2048 \
#   --allow_code_execution