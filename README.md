# Research Project Template

[![license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](LICENSE)
[![uv](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/uv/main/assets/badge/v0.json)](https://github.com/astral-sh/uv)
[![Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://docs.astral.sh/ruff/)
[![python versions](https://img.shields.io/badge/python-3.11%20|%203.12-blue)](https://www.python.org/downloads/)
[![LaTeX](https://img.shields.io/badge/latex-grey.svg?logo=latex)](https://www.latex-project.org/)
![ci](https://github.com/yp-edu/research-project-template/actions/workflows/ci.yml/badge.svg)

KISS research project template built for agents.

## Layout

- `src/` contains reusable Python package code.
- `scripts/` contains experiment entrypoints.
- `configs/` contains experiment configs.
- `docs/` contains project status, questions, literature, experiment conclusions, and Slurm launch artifacts.
- `latex/` contains the paper.
- `results/` is untracked scratch space for logs, outputs, checkpoints, and generated artifacts.
- `AGENTS.md` contains the operational guidelines.

## Commands

Python environment and package commands:

```bash
uv sync
uv add <package>
uv run -m scripts.run_experiment demo=first
```

Reusable recipes:

```bash
uv tool install rust-just
just install
just checks
just tests
just run demo=first
```

Slurm launch recipes:

```bash
bash docs/experiments/to-launch/example.sh
just launch-all --dry-run
```

## LaTeX

The paper lives in `latex/`. The LaTeX Workshop output directory is `%WORKSPACE_FOLDER%/latex/build/`.
