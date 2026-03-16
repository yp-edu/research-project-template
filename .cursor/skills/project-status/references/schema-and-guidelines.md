# Project Status: Schema and Guidelines

The project status file is **`docs/PROJECT_STATUS.md`** (tracked). It is the single source of truth for where the project stands. Update it after major steps (e.g. after setup, after experiments, after writing sessions). Use the **project-status** skill when reading or updating.

## Schema

- **Phase**: One of `setup` | `ideation` | `baseline` | `contribution` | `review`
- **Last updated**: Date (YYYY-MM-DD) or timestamp
- **Key artifacts**: Pointers to paper, code, configs, results (paths or short descriptions)
- **Next steps**: Short ordered list of concrete next actions
- **Open decisions / blockers**: Anything blocking progress or requiring a decision

## Section structure (keep when editing)

The file must contain these section headers in order:

1. **Phase** — One of the five phases above.
2. **Last updated** — YYYY-MM-DD.
3. **Key artifacts** — Bullet list (e.g. Paper: `latex/`, Code: `src/`, `scripts/`, Configs: `configs/`, Results: `results/`).
4. **Next steps** — Numbered list of concrete actions.
5. **Open decisions / blockers** — Bullet list or "(None, or list items)".

## Conventions

- Tracked project artifacts live in **`docs/`** (versioned).
- Untracked outputs (runs, logs, checkpoints) live in **`results/`** (git-ignored); reference them in Key artifacts by path or description, not by committing them.
