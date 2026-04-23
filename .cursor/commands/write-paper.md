# Write Paper

## Overview

Entry point for paper writing: choose sections, map claims to evidence, outline, edit LaTeX, and keep the paper narrative aligned with the project memory.

## Skills Used

- **paper-writing** — Section goals and structure (`latex/sections/`).
- **claims-evidence** — Map claims to results, configs, or code; avoid unsupported claims.
- **section-editing** — Small, reviewable LaTeX edits and rewrite patterns.
- **project-memory** — Read `docs/README.md`, `docs/literature/README.md`, and `docs/experiments/README.md` before drafting.

## Subagents

- **research-writer** — LaTeX drafting and revision.

## Agent Instructions

1. **Delegate well**: Use the **research-writer** agent as the default specialist for this command.
2. **Choose sections**: Ask which section(s) to focus on (e.g. introduction, methods, experiments, discussion) and any constraints (venue, length, style).
3. **Gather inputs**: Read the relevant project memory from `docs/README.md`, `docs/literature/README.md`, and `docs/experiments/README.md`. Ask for any missing result files, figures, or notes.
4. **Map claims to evidence**: Use the **claims-evidence** skill to list the claims the user wants to make and the corresponding evidence (result files, configs, tables, citations). Do not add claims without evidence.
5. **Outline**: Use the **paper-writing** skill (section goals) to propose an outline or revision plan for the chosen section(s).
6. **Edit LaTeX**: Use the **section-editing** skill to make small, reviewable edits to `latex/sections/*.tex`. Keep claims faithful to the underlying code, experiments, and literature.
7. **Summarize**: List what was changed, which evidence supports new or updated claims, and any open TODOs; suggest follow-up (e.g. `/review-paper`, `/whats-next`).
