---
name: project-memory
description: "Read and update docs/README.md plus the focused memory docs under docs/."
---

# Project Memory Skill

## When to Use

- A command needs to read or update the current project state.
- You need to know the current phase, key artifacts, next steps, or open decisions.
- You have made progress that should be persisted in a human-readable way.

## Instructions

- Use `references/schema-and-guidelines.md` for the structure and conventions.
- The main memory file is **`docs/README.md`**.
- Focused memory files are **`docs/questions/README.md`**, **`docs/literature/README.md`**, and **`docs/experiments/README.md`**.

When **reading**:
1. Read `docs/README.md` first.
2. Read only the focused memory files relevant to the task.
3. Use the docs to ground planning, writing, and handoffs.

When **updating**:
1. Preserve the section headers in each memory file.
2. Keep updates concise and human-readable.
3. Put high-level state and next steps in `docs/README.md`.
4. Put detailed domain memory in the focused file that matches the task.
5. Do not duplicate the same details across all docs files.

## Conventions

- Tracked project memory lives in **`docs/`**.
- Untracked outputs (runs, logs, checkpoints) live in **`results/`**; reference them from the memory docs instead of committing them.
