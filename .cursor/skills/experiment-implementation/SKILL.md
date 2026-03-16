---
name: experiment-implementation
description: "How to change code, tests, configs, and launch in this repo; output is concrete edits and run commands."
---

# Experiment Implementation Skill

## When to Use

- You have an experiment design (from **experimental-design**) and need to implement it in this template (configs, code, tests, launch).
- You need to propose concrete file edits and commands to run the experiment.

## Instructions

- Use `references/implementation-notes.md` for this template's layout (scripts, configs, results, tests, launch).
- **Configs**: Add or edit YAML under `configs/<script_name>/`; ensure defaults in `configs/run_experiment.yaml` reference the right groups; suggest CLI overrides (e.g. `demo=first`).
- **Code**: Edit `src/research_project_template/` or script modules under `scripts/` in small, reviewable steps; avoid large refactors in one go.
- **Tests**: Add or extend tests under `tests/`; run with `uv run pytest`. Prefer unit tests for core logic.
- **Launch**: If the user runs on a cluster, point to `launch/` scripts and `configs/hydra/launcher/` for submitit/slurm.
- **Output**: For each change, list concrete edits (file path + what to change) and the exact run command(s) (e.g. `uv run -m scripts.run_experiment demo=first`). Mention that outputs go to `results/` (untracked).
