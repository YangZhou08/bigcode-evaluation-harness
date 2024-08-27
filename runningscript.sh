treesizes=(1 4 6 8) 
for treesize in ${treesizes[@]} 
do 
accelerate launch --num_processes 8 main.py \
  --model meta-llama/Meta-Llama-3-8B \
  --tasks humaneval \
  --do_sample False \
  --n_samples 1 \
  --batch_size 1 \
  --max_length_generation 512 \
  --enable_epatches \
  --cats \
  --allow_code_execution \
  --spr 0.5 \
  --widthtree $treesize \
  --check \
  --kernelsize 16 \
  --thr 0.1 \

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