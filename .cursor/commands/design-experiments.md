# Design Experiments

## Overview

Repeatable workflow to create a new experiment from a paper or idea: frame question and hypothesis, design runs, edit configs/code/tests, and document status. Invoke the **research-engineer** subagent for implementation.

## Skills Used

- **experimental-design** — Hypothesis, metrics, configs, reproducibility checklist.
- **experiment-implementation** — Concrete edits to code, tests, configs, launch; run commands.
- **project-status** — Update `docs/PROJECT_STATUS.md` with new experiments or next steps.

## Subagents

- **research-engineer** — Code, configs, tests, and launch scripts.

## Agent Instructions

1. **Frame question and hypothesis**: Ask what question the experiment answers, what the user expects (hypothesis), and what constraints apply (data, metrics, baselines). Use the **experimental-design** skill to ensure the design checklist is satisfied (question, hypothesis, dataset/splits, metrics, config, baselines, reproducibility).
2. **Design runs**: Propose a small set of runs (e.g. main experiment, sanity check, ablation). Map each to configs and parameters using **experimental-design** and the existing config structure.
3. **Implement**: Use the **experiment-implementation** skill to propose concrete edits (configs, code under `src/` or `scripts/`, tests under `tests/`, and optional launch scripts). Invoke **research-engineer** to apply edits in small, reviewable steps. Suggest run commands and where outputs go (`results/`).
4. **Document status**: Use the **project-status** skill to update `docs/PROJECT_STATUS.md`: add or update Key artifacts (e.g. new config or script), set Next steps (e.g. run experiment, add analysis).
5. **Summarize**: Briefly list what was implemented, how to run it, and suggested follow-up (e.g. run and analyze, then `/write-paper` or `/whats-next`).
