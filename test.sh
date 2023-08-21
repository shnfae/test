#!/bin/bash
#SBATCH --job-name data-analysis
#SBATCH --gres=gpu:1
#SBATCH --cpu-per-gpu=4
#SBATCH --mem-per-gpu=32G
#SBATCH --time 1-0
#SBATCH --partition batch_ugrad
#SBATCH -x ariel-gl
#SBATCH -0 slurm/logs/slurm-%A_%a-%x.out

python test.py

exit 0
