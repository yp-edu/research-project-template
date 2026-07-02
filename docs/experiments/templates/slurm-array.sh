#!/usr/bin/env bash
#SBATCH --job-name=<job_name>
#SBATCH --output=results/slurm/%x-%A_%a.out
#SBATCH --error=results/slurm/%x-%A_%a.err
#SBATCH --cpus-per-task=7
#SBATCH --gpus-per-node=a100_3g.40gb:1
#SBATCH --mem=100G
#SBATCH --hint=nomultithread
#SBATCH --mail-type=FAIL
#SBATCH --qos=short
#SBATCH --time=10:00:00
#SBATCH --array=<start-end%max_concurrent>

set -euo pipefail

if [[ -z "${SLURM_JOB_ID:-}" ]]; then
    mkdir -p results/slurm
    exec sbatch "$0"
fi

module purge
source ./secret-env.sh

mkdir -p results/experiments results/slurm

export OMP_NUM_THREADS="${SLURM_CPUS_PER_TASK:-7}"
export MKL_NUM_THREADS="${SLURM_CPUS_PER_TASK:-7}"
export NUMEXPR_NUM_THREADS="${SLURM_CPUS_PER_TASK:-7}"

RUNS=(
    "--config-name 2026-06-23-smoke seed=0"
    "--config-name 2026-06-23-smoke seed=1"
    "--config-name 2026-06-23-smoke seed=2"
)

if [ "$SLURM_ARRAY_TASK_ID" -ge "${#RUNS[@]}" ]; then
    echo "Invalid task id: $SLURM_ARRAY_TASK_ID"
    exit 1
fi

uv run -m scripts.demo \
    ${RUNS[$SLURM_ARRAY_TASK_ID]} \
    hydra.run.dir="results/hydra/<experiment_name>/${SLURM_ARRAY_JOB_ID}_${SLURM_ARRAY_TASK_ID}"
