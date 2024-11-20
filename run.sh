#!/bin/bash
#SBATCH --job-name=gpt2_run
#SBATCH --partition=gpu
#SBATCH --gres=gpu:2
#SBATCH --time=01:00:00
#SBATCH --output=gpt2_output_%j.log
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=64G

# Set the correct conda path
CONDA_PATH=/home/jjgoodman/miniconda3
ENV_NAME=gpt2-env

# Initialize conda
source ${CONDA_PATH}/etc/profile.d/conda.sh

# Activate environment
conda activate ${ENV_NAME}

# Print environment info for debugging
echo "Python path: $(which python)"
echo "Conda env: $CONDA_DEFAULT_ENV"
nvidia-smi

# Run your script
python src/generate_unconditional_samples.py --model_name 774M --top_k 40 --length 256