#!/usr/bin/env bash
#SBATCH --job-name=<job_name>
#SBATCH --cpus-per-task=24
#SBATCH --gres=gpu:1
#SBATCH --partition=gpu_p6
#SBATCH --constraint=h100
#SBATCH --error=results/slurm/%x-%j.err
#SBATCH --hint=nomultithread
#SBATCH --mail-type=FAIL
#SBATCH --output=results/slurm/%x-%j.out
#SBATCH --qos=qos_gpu_h100-t3
#SBATCH --time=20:00:00

set -euo pipefail

if [[ -z "${SLURM_JOB_ID:-}" ]]; then
    mkdir -p results/slurm
    source ./secret-env.sh
    exec sbatch --account="${IDRPROJ:?set IDRPROJ in secret-env.sh}@h100" "$0"
fi

module load arch/h100
source ./secret-env.sh

mkdir -p results/experiments results/slurm

export OMP_NUM_THREADS="${SLURM_CPUS_PER_TASK:-24}"
export MKL_NUM_THREADS="${SLURM_CPUS_PER_TASK:-24}"
export NUMEXPR_NUM_THREADS="${SLURM_CPUS_PER_TASK:-24}"

<experiment_command>
