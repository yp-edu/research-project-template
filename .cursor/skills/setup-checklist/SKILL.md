---
name: setup-checklist
description: "First-time template setup checklist: metadata, structure, environment."
---

# Setup Checklist Skill

## When to Use

- The user has forked or cloned this template and wants to initialize the project.
- You need a checklist to drive first-time setup (metadata, structure, environment).

## Instructions

- Use this skill only for **first-time setup** after forking. For "what to do next" use the **whats-next** command and **project-memory** skill instead.

**Checklist (confirm or complete each):**

1. **Metadata**
   - Project title / name.
   - Author name, lab, email (replace `<NAME>`, `<LAB>`, `<EMAIL>` placeholders if present in template).
   - Target venue (if any) and high-level problem statement.

2. **Structure**
    - Confirm you can locate `configs/`, `scripts/`, `latex/`, `docs/`, `results/`.
    - Ensure `docs/README.md` exists and serves as the main project memory; create or update via **project-memory**.
    - Ensure `docs/questions/README.md`, `docs/literature/README.md`, and `docs/experiments/README.md` exist as focused memory docs.
    - Confirm experiment entrypoints (`scripts/run_experiment.py`, `Justfile` for cluster helpers) and config roots (`configs/`, `configs/hydra/`) are understood.
   - **Package rename**: If project name differs from `research-project-template`, derive package name (`project_name.replace("-", "_")`), rename `src/research_project_template` to `src/<package_name>`, and update all imports and references. Use `references/package-renaming.md` for the procedure.
   - **Cluster paths**: If you use `just sync-to`, `sync-from`, or `retrieve`, update the `cluster_repo_*` (and `cluster_host_*`) values at the top of the `Justfile` so they match your clone directory name on each cluster and your HPC filesystem path (the default Jean Zay path is an example; replace project/login segments if your allocation differs).

3. **Environment**
   - Dependencies: `uv sync` (or equivalent) so the project runs.
   - Optional: LaTeX toolchain, cluster/launcher config if the user will run remote jobs.
   - Use **setup-dependencies** for dependency and environment details.

4. **Docs bootstrap**
    - Use **setup-docs** to create the initial project memory files under `docs/`.

5. **Handoff**
    - Update `docs/README.md` with **project-memory**: set phase (e.g. `ideation` or `baseline`), next steps, and key artifacts.
    - Suggest next command (e.g. **literature-review**, **design-experiments**, **whats-next**).
