#!/usr/bin/env bash
#SBATCH --job-name=<job_name>
#SBATCH --cpus-per-task=7
#SBATCH --gpus-per-node=a100_3g.40gb:1
#SBATCH --mem=100G
#SBATCH --error=results/slurm/%x-%j.err
#SBATCH --hint=nomultithread
#SBATCH --mail-type=FAIL
#SBATCH --output=results/slurm/%x-%j.out
#SBATCH --qos=short
#SBATCH --time=10:00:00

set -euo pipefail

if [[ -z "${SLURM_JOB_ID:-}" ]]; then
    mkdir -p results/slurm
    exec sbatch "$0"
fi

source ./secret-env.sh

mkdir -p results/experiments results/slurm

export OMP_NUM_THREADS="${SLURM_CPUS_PER_TASK:-7}"
export MKL_NUM_THREADS="${SLURM_CPUS_PER_TASK:-7}"
export NUMEXPR_NUM_THREADS="${SLURM_CPUS_PER_TASK:-7}"

<experiment_command>
