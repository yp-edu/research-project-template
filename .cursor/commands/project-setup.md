# Project Setup

## Overview

Entry point for first-time setup after forking this template: clarify the goal, confirm structure, apply setup checklist, and initialize the project memory files.

## Skills Used

- **setup-checklist** — First-time setup checklist (placeholders, structure, environment).
- **setup-dependencies** — Dependencies and environment setup (uv, LaTeX, cluster).
- **setup-docs** — Create the lightweight project memory docs under `docs/`.
- **project-memory** — Read/update `docs/README.md` and the focused memory docs.

## Subagents

None required (optional: research-advisor for strategy only).

## Agent Instructions

1. **Clarify goal**: Ask whether this is first-time setup after a fork, or a re-audit of current setup.
2. **Confirm structure**: Ensure you can locate `configs/`, `scripts/`, `latex/`, `docs/`, `results/` and main entrypoints.
3. **Apply setup checklist**: Use **setup-checklist** to confirm placeholders, structure, intended project name, and environment.
4. **Package rename**: If the user has set a project name different from `research-project-template`, derive the package name (`project_name.replace("-", "_")`), rename `src/research_project_template` to `src/<package_name>`, and update pyproject.toml, scripts, tests, notebooks, and skill references per `setup-checklist/references/package-renaming.md`. Run `uv sync` afterward.
5. **Dependencies**: Use **setup-dependencies** for `uv sync`, LaTeX tooling, and optional cluster setup.
6. **Docs bootstrap**: Use **setup-docs** to create or refine `docs/README.md`, `docs/questions/README.md`, `docs/literature/README.md`, and `docs/experiments/README.md`.
7. **Initialize memory**: Use **project-memory** to record the current phase, intended project name, key paths, and immediate next steps in `docs/README.md`.
8. **Handoff**: Suggest the next command (e.g. `/literature-review`, `/design-experiments`, `/whats-next`) and briefly summarize what was done.
