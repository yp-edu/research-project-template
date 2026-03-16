# Write Paper

## Overview

Repeatable workflow to edit LaTeX and write ideas or results: choose sections, map claims to evidence, outline, then edit. Invoke the **research-writer** subagent for drafting and edits.

## Skills Used

- **paper-writing** — Section goals and structure (`latex/sections/`).
- **claims-evidence** — Map claims to results, configs, or code; avoid unsupported claims.
- **section-editing** — Small, reviewable LaTeX edits and rewrite patterns.

## Subagents

- **research-writer** — LaTeX drafting and revision.

## Agent Instructions

1. **Choose sections**: Ask which section(s) to focus on (e.g. introduction, methods, experiments, discussion) and any constraints (venue, length, style).
2. **Gather inputs**: Ask for key experimental results, method decisions, and relevant prior work; encourage the user to point to specific files, figures, or notes.
3. **Map claims to evidence**: Use the **claims-evidence** skill to list the claims the user wants to make and the corresponding evidence (result files, configs, tables, citations). Do not add claims without evidence.
4. **Outline**: Use the **paper-writing** skill (section goals) to propose an outline or revision plan for the chosen section(s).
5. **Edit LaTeX**: Use the **section-editing** skill to make small, reviewable edits to `latex/sections/*.tex`. Keep claims faithful to the underlying code, experiments, and literature. Invoke **research-writer** for drafting.
6. **Summarize**: List what was changed, which evidence supports new or updated claims, and any open TODOs; suggest follow-up (e.g. `/review-paper`, `/whats-next`).
