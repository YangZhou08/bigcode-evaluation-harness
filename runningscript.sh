accelerate launch --num_processes 4 main.py \
  --model meta-llama/Meta-Llama-3-8B-Instruct \
  --tasks humaneval \
  --do_sample False \
  --n_samples 1 \
  --batch_size 1 \
  --max_length_generation 512 \
  --enable_epatches \
  --allow_code_execution \

sparsity=(0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9)
for s in ${sparsity[@]};
do
accelerate launch --num_processes 4 main.py \
  --model meta-llama/Meta-Llama-3-8B-Instruct \
  --tasks humaneval \
  --do_sample False \
  --n_samples 1 \
  --batch_size 1 \
  --max_length_generation 512 \
  --enable_epatches \
  --griffin \
  --allow_code_execution \
  --spr ${s}

accelerate launch --num_processes 4 main.py \
  --model meta-llama/Meta-Llama-3-8B-Instruct \
  --tasks humaneval \
  --do_sample False \
  --n_samples 1 \
  --batch_size 1 \
  --max_length_generation 512 \
  --enable_epatches \
  --cats \
  --allow_code_execution \
  --spr ${s}

done

# accelerate launch --num_processes 4 main.py \
#   --model meta-llama/Meta-Llama-3-8B \
#   --limit 50 \
#   --tasks mbpp \
#   --do_sample False \
#   --n_samples 1 \
#   --batch_size 1 \
#   --max_length_generation 2048 \
#   --allow_code_execution