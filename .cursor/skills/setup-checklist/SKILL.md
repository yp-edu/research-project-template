---
name: setup-checklist
description: "First-time template setup checklist: metadata, structure, environment."
---

# Setup Checklist Skill

## When to Use

- The user has forked or cloned this template and wants to initialize the project.
- You need a checklist to drive first-time setup (metadata, structure, environment).

## Instructions

- Use this skill only for **first-time setup** after forking. For "what to do next" use the **whats-next** command and **project-status** skill instead.

**Checklist (confirm or complete each):**

1. **Metadata**
   - Project title / name.
   - Author name, lab, email (replace `<NAME>`, `<LAB>`, `<EMAIL>` placeholders if present in template).
   - Target venue (if any) and high-level problem statement.

2. **Structure**
   - Confirm you can locate `configs/`, `scripts/`, `launch/`, `latex/`, `docs/`, `results/`.
   - Ensure `docs/PROJECT_STATUS.md` exists and phase is set (e.g. `setup`); create or update via **project-status** skill.
   - Confirm experiment entrypoints (`scripts/run_experiment.py`, `launch/*`) and config roots (`configs/`, `configs/hydra/`) are understood.

3. **Environment**
   - Dependencies: `uv sync` (or equivalent) so the project runs.
   - Optional: LaTeX toolchain, cluster/launcher config if the user will run remote jobs.
   - Use **setup-dependencies** for dependency and environment details.

4. **Docs bootstrap**
   - Use **setup-docs** to create initial `docs/README.md` and any meta notes (project overview, links, meeting notes).

5. **Handoff**
   - Update `docs/PROJECT_STATUS.md` with **project-status**: set phase (e.g. `ideation` or `baseline`), next steps, key artifacts.
   - Suggest next command (e.g. **literature-review**, **design-experiments**, **whats-next**).
