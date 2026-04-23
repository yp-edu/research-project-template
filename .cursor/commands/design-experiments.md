# Design Experiments

## Overview

Entry point for experiment work: frame the question and hypothesis, design runs, implement changes, and update experiment memory. Use the **research-engineer** agent as the default specialist.

## Skills Used

- **experimental-design** — Hypothesis, metrics, configs, reproducibility checklist.
- **experiment-implementation** — Concrete edits to code, tests, configs, and run commands (including cluster/Hydra when relevant).
- **project-memory** — Update `docs/README.md`, `docs/questions/README.md`, and `docs/experiments/README.md`.

## Subagents

- **research-engineer** — Code, configs, tests, and cluster/Hydra launch wiring.

## Agent Instructions

1. **Delegate well**: Use the **research-engineer** agent by default for this command.
2. **Frame question and hypothesis**: Ask what question the experiment answers, what the user expects (hypothesis), and what constraints apply (data, metrics, baselines). Challenge the hypothesis: Is it testable? What would constitute a null or negative result? How will statistical significance be assessed? Use the **experimental-design** skill to ensure the design checklist is satisfied.
3. **Design runs**: Propose a small set of runs (e.g. main experiment, sanity check, ablation). Map each to configs and parameters using **experimental-design** and the existing config structure.
4. **Implement**: Use the **experiment-implementation** skill to propose concrete edits (configs, code under `src/` or `scripts/`, tests under `tests/`, and optional Hydra launcher overrides or `Justfile` tweaks). Suggest run commands and where outputs go (`results/`).
5. **Update memory**: Use **project-memory** to keep `docs/questions/README.md` and `docs/experiments/README.md` current. Add only a concise summary or next step to `docs/README.md`.
6. **Summarize**: Briefly list what was implemented, how to run it, and suggested follow-up (e.g. run and analyze, then `/write-paper` or `/whats-next`).
