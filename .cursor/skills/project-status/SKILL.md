---
name: project-status
description: "Read and update docs/PROJECT_STATUS.md; schema and conventions for planning and recording outcomes."
---

# Project Status Skill

## When to Use

- The user asks what to do next or wants to plan the next step.
- A command (e.g. whats-next, project-setup, design-experiments) needs to record or read project state.
- You need to know the current phase, key artifacts, next steps, or open blockers.

## Instructions

- Use `references/schema-and-guidelines.md` for the file location, schema, section structure, and conventions.
- The project status file is **`docs/PROJECT_STATUS.md`** (tracked). Use it as the single source of truth for "where we are."

When **reading**:
1. Open `docs/PROJECT_STATUS.md` and parse the current phase, artifacts, next steps, and blockers.
2. Use this to inform planning or handoffs (e.g. suggest the next command or subagent).

When **updating**:
1. Preserve the schema and section headers.
2. Update **Last updated** to today (YYYY-MM-DD).
3. Update **Phase** only when the project has moved to a new phase.
4. Append or replace **Next steps** with concrete, actionable items.
5. Add or remove **Open decisions / blockers** as needed.
6. Keep **Key artifacts** in sync with actual important paths (e.g. after adding experiments or sections).

## Conventions

- Tracked project artifacts live in **`docs/`** (versioned).
- Untracked outputs (runs, logs, checkpoints) live in **`results/`** (git-ignored); reference them in Key artifacts by path or description, not by committing them.
