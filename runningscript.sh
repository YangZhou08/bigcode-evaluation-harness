accelerate launch --num_processes 1 main.py \
  --model meta-llama/Llama-2-7b-chat-hf \
  --tasks mbppplus \
  --do_sample False \
  --n_samples 1 \
  --batch_size 1 \
  --max_length_generation 512 \
  --enable_epatches \
  --griffin \
  --allow_code_execution \
  --spr 0.5 \
  --widthtree 1 \
  --check \
  --kernelsize 12 \
  --thr 0.05 \

# accelerate launch --num_processes 4 main.py \
#   --model meta-llama/Meta-Llama-3-8B \
#   --limit 50 \
#   --tasks mbpp \
#   --do_sample False \
#   --n_samples 1 \
#   --batch_size 1 \
#   --max_length_generation 2048 \
#   --allow_code_execution