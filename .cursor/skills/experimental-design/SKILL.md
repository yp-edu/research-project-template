---
name: experimental-design
description: "Patterns and checklists for designing and refining experiments in this research template."
---

# Experimental Design Skill

## When to Use

- The user is setting up or modifying experiments.
- The user is unsure which experiments are sufficient to support a claim.
- You need guardrails to avoid under-specified or irreproducible experiments.

## Instructions

- Use `references/design-checklist.md` for the minimal information every experiment needs.
- Refer to the existing structure (`scripts/run_experiment.py`, `configs/`, `launch/`) when mapping designs to code.

When designing experiments:

1. Ask what question the experiment should answer and what constraints apply.
2. Use the checklist to ensure hypotheses, datasets, metrics, and configs are clear.
3. Propose a small set of experiments (including sanity checks and ablations).
4. Suggest concrete config changes and run commands, keeping changes small and reviewable.
