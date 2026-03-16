---
name: reproducibility-check
description: "Apply the reproducibility checklist to assess whether experiments can be re-run reliably."
---

# Reproducibility Check Skill

## When to Use

- You are reviewing the project for reproducibility (e.g. **review-paper** command with experiments in scope).
- The user wants to know if main results can be reproduced from the repo.

## Instructions

- Use `references/checklist.md` for the checklist items.
- For each main result or experiment claimed in the paper, run through the checklist: entry point, configs, data, metrics, logging, randomness.
- For each item, record: **satisfied** (with pointer, e.g. "configs/run_experiment.yaml", "scripts/run_experiment.py") or **gap** (what is missing).
- Output: A short reproducibility report per result (or one table): checklist item → status + pointer or gap. Suggest concrete fixes for gaps (e.g. "add seed to config X").
