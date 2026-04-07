# Research Project Template

[![license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://github.com/yp-edu/research-project-template/blob/main/LICENSE)
[![uv](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/uv/main/assets/badge/v0.json)](https://github.com/astral-sh/uv)
[![Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://github.com/astral-sh/ruff)
[![python versions](https://img.shields.io/badge/python-3.11%20|%203.12-blue)](https://www.python.org/downloads/)
[![Latex](https://img.shields.io/badge/latex-grey.svg?logo=latex)](https://www.latex-project.org/)
![ci](https://github.com/yp-edu/research-project-template/actions/workflows/ci.yml/badge.svg)

KISS research project template built for Cursor IDE, Python, and LaTeX.

## Artifacts

- **`docs/`** — Tracked project artifacts (versioned). Use for project status, notes, and documentation. The planning source of truth is [`docs/PROJECT_STATUS.md`](docs/PROJECT_STATUS.md).
- **`results/`** — Untracked outputs (git-ignored). Use for experiment runs, logs, checkpoints, and generated figures.

After forking, run the **project-setup** command and keep `docs/PROJECT_STATUS.md` updated. See [Commands](#commands) below.

## AI Config

This repo assumes you are using Cursor IDE, hence the [`.cursor`](.cursor) folder, which you should tailor to your needs (especially the [rules](.cursor/rules/)).

You'll find MCP servers configured in [`.cursor/mcp.json`](.cursor/mcp.json), be sure to check the `--storage-path` of the `arxiv-mcp-server`. You can find more MCP servers in [Playbooks](https://playbooks.com/) or [Smithery](https://smithery.ai/).

## Latex Workshop Config

After setting-up Latex (e.g. with TeX Live), download the latex workshop extension from [here](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop).

This project uses the following latex workshop outdir: `%WORKSPACE_FOLDER%/latex/build/`.

## Python Config

Using `uv` to manage python dependencies and run scripts.

## Scripts

This project uses [Just](https://github.com/casey/just) to manage scripts, refer to their instructions for installation.

## Cluster Config

This project targets Slurm clusters (e.g. Jean Zay) using [Hydra](https://hydra.cc/) with [hydra-submitit-launcher](https://github.com/facebookresearch/hydra/tree/main/plugins/hydra_submitit_launcher). Launcher profiles live in [`configs/hydra/launcher/`](./configs/hydra/launcher/).

### Submit jobs (Hydra + submitit)

From the cluster login or head node, run the experiment module with a launcher override, for example:

```bash
uv run -m scripts.run_experiment -m demo=first \
    hydra/sweeper=groups_optuna \
    hydra/launcher=jz-dev
```

With [Just](https://github.com/casey/just) (see [Scripts](#scripts)):

```bash
just launch jz-dev groups_optuna demo=first
```

`just launch <launcher> <sweeper>` runs `uv run -m scripts.run_experiment -m …` with `hydra/launcher=<launcher>` and `hydra/sweeper=<sweeper>`; append further Hydra overrides as additional arguments.

### Sync code with the cluster (git)

Remote clone paths and SSH host aliases are defined once at the top of the [`Justfile`](./Justfile) (`cluster_host_*`, `cluster_repo_*`). Defaults use the template directory name `research-project-template` and an example Jean Zay path under `/lustre/fswork/projects/rech/<project>/<login>/` (edit `nwq` / `uim47nr` to match your allocation if needed). After **project setup** (fork rename or a different clone directory), update `cluster_repo_*` so they match the real paths on each machine.

- **`just sync-to cv`** or **`just sync-to jz`** — update local branch `tr` from `main`, push `tr` to the remote, then on the cluster `checkout main` and fast-forward merge `tr`.
- **`just sync-from cv`** or **`just sync-from jz`** — fetch on the cluster, fetch `tr` locally, merge `tr` into your current branch.

Requires git remotes named `cv` / `jz` (or matching your `cluster` argument) and a branch `tr` used for transfer, as in **Setup Git** below.

### Interactive Slurm

```bash
salloc --gpus 1 -A nwq@v100
srun uv run -m scripts.run_experiment demo=first
```

### Optional: batch without Hydra

You can submit a one-off Slurm job with a minimal script that only runs your entrypoint, for example:

```bash
sbatch --wrap='srun uv run -m scripts.run_experiment demo=first'
```

Adapt `#SBATCH` resource flags to your site (or use `salloc` / submitit above).

### Sync Weights & Biases logs

Offline runs can be synced with:

```bash
just sync-experiments
```

Set **`WANDB_API_KEY`** in the environment (or paste when prompted).

### Notebooks on the cluster

See [`notebooks/`](./notebooks/) to run notebooks on a cluster JupyterHub.

### Setup Git (on the cluster)

Initialize or clone your project, add a remote for your laptop, and use a dedicated transfer branch:

```bash
mkdir research-project-template
cd research-project-template
git init
```

```bash
git remote add jz <remote_url>
```

```bash
git branch tr
git push --set-upstream jz tr
```

### Setup `uv` (on the cluster)

Follow the [uv installation guide](https://docs.astral.sh/uv/getting-started/installation/#standalone-installer), then:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
uv sync
```

### Jean Zay notes

**Head node vs compute.** Jean Zay does not support the usual remote VS Code server workflow; options include `rsync` or `sshfs` ([VS Code troubleshooting](https://code.visualstudio.com/docs/remote/troubleshooting#_using-sshfs-to-access-files-on-your-remote-host)). Compute nodes are often offline; install dependencies and assets on the head node. For `uv` on compute you can use `--no-sync` where appropriate.

**Quotas.** Per-user and per-project disk/inode: `idr_quota_user`, `idr_quota_project` ([IDRIS](http://www.idris.fr/eng/jean-zay/cpu/jean-zay-quota-eng.html)).

**Allocation.** `idracct`, projects via `idrproj`, fair share via `idr_compuse` ([account doc](http://www.idris.fr/eng/jean-zay/cpu/jean-zay-cpu-doc_account-eng.html)).

**Inodes by directory** ([reference](https://unix.stackexchange.com/questions/4105/how-do-i-count-all-the-files-recursively-through-directories)):

```bash
find . ! -name . -prune -type d -exec sh -c '
  for dir do
    dir="${dir#./}"
    printf "%s:\t" "$dir"
    find ".//$dir" -type f | grep -c //
  done' sh {} +
```

**Monitor jobs.** `squeue -u <user>`, then SSH to the node and use `top`, `htop`, `nvidia-smi`, etc. ([IDRIS](http://www.idris.fr/eng/jean-zay/jean-zay-connexion_ssh_noeud_calcul-eng.html)).

**Links.** [Jean Zay Slurm partitions](http://www.idris.fr/eng/jean-zay/gpu/jean-zay-gpu-exec_partition_slurm-eng.html), [BigScience Slurm how-to](https://github.com/bigscience-workshop/bigscience/blob/master/jz/slurm/README.md).

## Commands

Repeatable workflows (run from Cursor command palette or chat): **project-setup**, **literature-review**, **design-experiments**, **write-paper**, **whats-next**, **review-paper**. Definitions live in [`.cursor/commands/`](.cursor/commands/).
