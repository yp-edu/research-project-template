# Research Project Template

[![license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://github.com/yp-edu/research-project-template/blob/main/LICENSE)
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
- `docs/` contains project notes, questions, literature, and experiment conclusions.
- `latex/` contains the paper.
- `results/` is untracked scratch space for logs, outputs, checkpoints, and generated artifacts.
- `AGENTS.md` contains the operational guidelines.

## Getting Started

1. Set the project slug, Python package name, and paper title.
2. Update `pyproject.toml`, `docs/README.md`, and `latex/main.tex`.
3. If the package name changes, rename `src/research_project_template/` and update imports.
4. If using cluster helpers, update `cluster_repo_*` and `cluster_host_*` in `Justfile`.
5. Run `uv sync`.

## Commands

Use `uv` for Python work:

```bash
uv sync
uv add <package>
uv run -m scripts.run_experiment demo=first
```

Use `just` for reusable recipes:

```bash
uv tool install rust-just
just install
just checks
just tests
just run-experiment demo=first
```

Launch cluster or sweep runs through the existing recipes:

```bash
just launch jz_t4 groups_optuna demo=first
```

## LaTeX

The paper lives in `latex/`. The LaTeX Workshop output directory is `%WORKSPACE_FOLDER%/latex/build/`.

## Project Memory

Use `docs/README.md` as the short dashboard. Put questions in `docs/questions/`, literature notes in `docs/literature/`, and experiment plans or conclusions in `docs/experiments/`.
