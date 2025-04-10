# GPT-2 on Cal Poly Pomona HPC

This project demonstrates running GPT-2 on the Cal Poly Pomona High Performance Computing (HPC) environment. The project uses a shell script to submit a job to the HPC cluster that generates text samples using the GPT-2 language model.

## Project Overview

The project uses the GPT-2 model (774M parameter version) to generate unconditional text samples. The generation is configured to use top-k sampling with k=40 and generates sequences of length 256 tokens.

## Shell Script Explanation

The `run.sh` script is a Slurm job submission script that:
- Requests GPU resources (2 GPUs)
- Allocates 16 CPU cores and 64GB of memory
- Sets a time limit of 1 hour
- Uses a custom conda environment named `gpt2-env`
- Runs the text generation script with specified parameters

### Key Script Components:
- `#SBATCH` directives configure the job requirements
- Conda environment setup and activation
- GPU status verification
- Execution of the GPT-2 generation script

## Usage

1. Ensure you have the required conda environment set up
2. Submit the job using:
   ```bash
   sbatch run.sh
   ```
3. Monitor the job using:
   ```bash
   squeue -u your_username
   ```
4. Check the output in the generated log file: `gpt2_output_[jobid].log`

## Additional Resources

For more information about this project, check out the presentation video:
[GPT-2 HPC Presentation](https://www.youtube.com/watch?v=AGwYorbxvgg)