#!/usr/bin/env bash
#SBATCH --job-name=<job_name>
#SBATCH --account=<project>@a100
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:1
#SBATCH --partition=gpu_p5
#SBATCH --constraint=a100
#SBATCH --error=results/slurm/%x-%j.err
#SBATCH --hint=nomultithread
#SBATCH --mail-type=FAIL
#SBATCH --output=results/slurm/%x-%j.out
#SBATCH --qos=qos_gpu_a100-t3
#SBATCH --time=20:00:00

set -euo pipefail

if [[ -z "${SLURM_JOB_ID:-}" ]]; then
    mkdir -p results/slurm
    exec sbatch "$0"
fi

module purge
module load arch/a100
source ./secret-env.sh

mkdir -p results/experiments results/slurm

export OMP_NUM_THREADS="${SLURM_CPUS_PER_TASK:-8}"
export MKL_NUM_THREADS="${SLURM_CPUS_PER_TASK:-8}"
export NUMEXPR_NUM_THREADS="${SLURM_CPUS_PER_TASK:-8}"

just run <experiment> <config>
