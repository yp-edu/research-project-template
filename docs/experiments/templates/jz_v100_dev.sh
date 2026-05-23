#!/usr/bin/env bash
#SBATCH --job-name=<job_name>
#SBATCH --account=<project>@v100
#SBATCH --cpus-per-task=10
#SBATCH --gres=gpu:1
#SBATCH --partition=gpu_p13
#SBATCH --error=results/slurm/%x-%j.err
#SBATCH --hint=nomultithread
#SBATCH --mail-type=FAIL
#SBATCH --output=results/slurm/%x-%j.out
#SBATCH --qos=qos_gpu-dev
#SBATCH --time=2:00:00

set -euo pipefail

if [[ -z "${SLURM_JOB_ID:-}" ]]; then
    mkdir -p results/slurm
    exec sbatch "$0"
fi

module purge
source ./secret-env.sh

mkdir -p results/experiments results/slurm

export OMP_NUM_THREADS="${SLURM_CPUS_PER_TASK:-10}"
export MKL_NUM_THREADS="${SLURM_CPUS_PER_TASK:-10}"
export NUMEXPR_NUM_THREADS="${SLURM_CPUS_PER_TASK:-10}"

<experiment_command>
