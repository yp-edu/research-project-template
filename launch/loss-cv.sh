#!/bin/bash

#SBATCH --job-name=loss-cv
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=100G
#SBATCH --gpus-per-node=a100_7g.80gb:1
#SBATCH --time=3600
#SBATCH --mail-type=ALL
#SBATCH --output=results/slurm/%x-%j.out
#SBATCH --error=results/slurm/%x-%j.err

module purge
uv run --no-sync -m scripts.loss
