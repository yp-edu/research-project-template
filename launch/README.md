# Cluster Launch

Opinionated guide to setup scripts launch on a cluster that uses Slurm and Conda.

## Setup Git

Init a git repo on the cluster:

```bash
mkdir paper-template
cd paper-template
git init
```

Add a cluster remote branch:

```bash
git remote add jeanzay <remote_url>
```

Dedicate a branch for the cluster:

```bash
git branch main-jz
git push --set-upstream jeanzay main-jz
```

## Setup `uv`

Simply follow [the official guide](https://docs.astral.sh/uv/getting-started/installation/#standalone-installer), e.g. using `curl`:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Install dependencies:

```bash
uv sync
```

## Launch Interactive

Get an interactive session:

```bash
salloc --gpus 1 -A nwq@v100
```

Run a job:

```bash
srun uv run --no-sync python -m scripts.loss
```

## Launch Batched

Launch a batched job:

```bash
sbatch launch/loss-jz.sh
```

## Sync `wandb` Logs

Use the following command:

```bash
make wandb-sync
```

You'll need to either export `WAND_API_KEY` environment variable or paste it when prompted.
