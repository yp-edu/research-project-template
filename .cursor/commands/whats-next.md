# Whats Next

## Overview

Repeatable workflow to plan the next step: read project status, optionally scan key files, brainstorm options, decide, and update status. Invoke the **research-advisor** subagent for this task.

## Skills Used

- **project-status** — Read and update `docs/PROJECT_STATUS.md`.
- **research-workflow** — Phase definitions and "what phase am I in"; phase-specific checklists.

## Subagents

- **research-advisor** — Strategy and planning; use for brainstorming and deciding next steps.

## Agent Instructions

1. **Read status**: Use the **project-status** skill to open `docs/PROJECT_STATUS.md` and parse Phase, Key artifacts, Next steps, and Open decisions / blockers.
2. **Scan key files** (if needed): Briefly inspect relevant code, configs, or LaTeX to ground the discussion.
3. **Apply phase context**: Use the **research-workflow** skill to recall the current phase (setup, ideation, baseline, contribution, review) and phase-specific checklists.
4. **Brainstorm**: With the user (or as research-advisor), list 2–5 concrete next-step options (e.g. run literature-review, design a new experiment, write a section, run review-paper).
5. **Decide**: Work with the user to pick one or more next steps; prioritize and optionally assign a command or subagent (e.g. `/literature-review`, `/design-experiments`, `/write-paper`, `/review-paper`).
6. **Update status**: Use the **project-status** skill to update `docs/PROJECT_STATUS.md`: set Next steps and optionally Phase, Last updated, and Open decisions.
7. **Handoff**: Clearly suggest which command to run next and summarize the plan.
