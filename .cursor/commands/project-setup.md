# Project Setup

## Overview

Repeatable workflow for first-time setup after forking this template: clarify goal, confirm structure, apply setup checklist, and update project status.

## Skills Used

- **setup-checklist** — First-time setup checklist (metadata, structure, environment).
- **setup-dependencies** — Dependencies and environment setup (uv, LaTeX, cluster).
- **setup-docs** — Create initial `docs/README.md` meta docs.
- **project-status** — Read/update `docs/PROJECT_STATUS.md`.

## Subagents

None required (optional: research-advisor for strategy only).

## Agent Instructions

1. **Clarify goal**: Ask whether this is first-time setup after a fork, or a re-audit of current setup.
2. **Confirm structure**: Ensure you can locate `configs/`, `scripts/`, `latex/`, `docs/`, `results/` and main entrypoints.
3. **Apply setup checklist**: Use **setup-checklist** to confirm metadata (author, project name, venue), placeholders, structure, and environment.
4. **Package rename**: If the user has set a project name different from `research-project-template`, derive the package name (`project_name.replace("-", "_")`), rename `src/research_project_template` to `src/<package_name>`, and update pyproject.toml, scripts, tests, notebooks, and skill references per `setup-checklist/references/package-renaming.md`. Run `uv sync` afterward.
5. **Dependencies**: Use **setup-dependencies** for `uv sync`, LaTeX tooling, and optional cluster setup.
6. **Docs bootstrap**: Use **setup-docs** to create `docs/README.md` and initial meta notes.
7. **Update status**: Use **project-status** to create or update `docs/PROJECT_STATUS.md`: set Phase (e.g. `setup` then `ideation`), Key artifacts, Next steps, and any Open decisions.
8. **Handoff**: Suggest the next command (e.g. `/literature-review`, `/design-experiments`, `/whats-next`) and briefly summarize what was done.
