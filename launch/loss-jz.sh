#!/bin/bash

#SBATCH --job-name=loss-jz
#SBATCH --nodes=1
#SBATCH --gpus=1
#SBATCH --time=60
#SBATCH --mail-type=ALL
#SBATCH --output=results/slurm/%x-%j.out
#SBATCH --error=results/slurm/%x-%j.err
#SBATCH --account=nwq@v100

module purge
uv run --no-sync -m scripts.loss
