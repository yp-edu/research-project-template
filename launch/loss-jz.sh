#!/bin/bash

#SBATCH --job-name=loss-jz
#SBATCH --nodes=1
#SBATCH --gpus=1
#SBATCH --time=60
#SBATCH --mail-type=ALL
#SBATCH --output=%x-%j.out
#SBATCH --error=%x-%j.err
#SBATCH --account=nwq@v100

module purge
uv run --no-sync python -m scripts.loss
