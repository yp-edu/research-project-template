# Research Project Template

[![license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](LICENSE)
[![uv](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/uv/main/assets/badge/v0.json)](https://github.com/astral-sh/uv)
[![Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://docs.astral.sh/ruff/)
[![python versions](https://img.shields.io/badge/python-3.11%2B-blue)](https://www.python.org/downloads/)
[![LaTeX](https://img.shields.io/badge/latex-grey.svg?logo=latex)](https://www.latex-project.org/)
![ci](https://github.com/yp-edu/research-project-template/actions/workflows/ci.yml/badge.svg)

KISS research project template built for agents.

## Layout

- `src/` contains reusable Python package code.
- `scripts/` contains independent experiment entrypoints.
- `configs/` contains one config folder per script.
- `docs/` contains project status, questions, literature, experiment conclusions, and Slurm launch artifacts.
- `latex/` contains the paper.
- `results/` is untracked scratch space for logs, outputs, checkpoints, and generated artifacts; experiment notes record the provenance needed to reproduce or retrieve them.
- `AGENTS.md` contains the operational guidelines.

## Workflows

- **Project setup** — Set the project name, Python package, paper identity, documentation identity, and cluster paths.
- **Explore literature** — Connect relevant research to the project's questions, claims, experiments, and positioning.
- **Plan next** — Use current evidence and unanswered questions to choose the next research direction.
- **Project status** — Summarize current results, claims, decisions, questions, planned work, and blockers.
- **Record results** — Document experiment provenance, results, limitations, conclusions, and resulting claims or decisions.
- **Review claims** — Audit claims against evidence, limitations, contradictions, and likely reviewer objections.
- **Promote to paper** — Integrate stable direction, validated results, supported claims, and literature into the paper.

## Commands

Python environment and package commands:

```bash
uv sync
uv add <package>
uv run -m scripts.<experiment> --config-name <config>
```

Reusable recipes:

```bash
uv tool install rust-just
just install
just checks
just tests
just run <experiment> <config>
```

Copy and customize a Slurm template from `docs/experiments/templates/` into
`docs/experiments/to-launch/`:

```bash
just launch-all --dry-run
```

## LaTeX

The paper lives in `latex/`. The LaTeX Workshop output directory is `%WORKSPACE_FOLDER%/latex/build/`.
