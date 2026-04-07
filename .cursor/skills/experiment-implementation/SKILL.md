---
name: experiment-implementation
description: "How to change code, tests, configs, and cluster run commands in this repo; output is concrete edits and run commands."
---

# Experiment Implementation Skill

## When to Use

- You have an experiment design (from **experimental-design**) and need to implement it in this template (configs, code, tests, cluster launch via README/Just/Hydra).
- You need to propose concrete file edits and commands to run the experiment.

## Instructions

- Use `references/implementation-notes.md` for this template's layout (scripts, configs, results, tests, cluster launch).
- **Configs**: Add or edit YAML under `configs/<script_name>/`; ensure defaults in `configs/run_experiment.yaml` reference the right groups; suggest CLI overrides (e.g. `demo=first`).
- **Code**: Edit `src/research_project_template/` or script modules under `scripts/` in small, reviewable steps; avoid large refactors in one go.
- **Tests**: Add or extend tests under `tests/`; run with `uv run pytest`. Prefer unit tests for core logic.
- **Cluster**: If the user runs on a cluster, point to **Cluster Config** in the repo `README.md`, `configs/hydra/launcher/` (submitit), and the `Justfile` (`just launch`, `just sync-to` / `just sync-from`, `retrieve` recipes).
- **Output**: For each change, list concrete edits (file path + what to change) and the exact run command(s) (e.g. `uv run -m scripts.run_experiment demo=first`). Mention that outputs go to `results/` (untracked).
