# Whats Next

## Overview

Entry point for planning the next step: read project memory, scan key files if needed, brainstorm options, decide, and update the main memory file.

## Skills Used

- **project-memory** — Read and update `docs/README.md` plus the focused memory docs when needed.
- **research-workflow** — Phase definitions and "what phase am I in"; phase-specific checklists.

## Subagents

- **research-advisor** — Strategy and planning; use for brainstorming and deciding next steps.

## Agent Instructions

1. **Delegate well**: Use the **research-advisor** agent as the default specialist for this command.
2. **Read memory**: Use the **project-memory** skill to open `docs/README.md` and inspect the focused memory docs that matter for the decision.
3. **Scan key files** (if needed): Briefly inspect relevant code, configs, or LaTeX to ground the discussion.
4. **Apply phase context**: Use the **research-workflow** skill to recall the current phase (setup, ideation, baseline, contribution, review) and phase-specific checklists.
5. **Brainstorm**: List 2–5 concrete next-step options (e.g. `/literature-review`, `/design-experiments`, `/write-paper`, `/review-paper`). For each option, briefly assess feasibility, impact, and statistical rigor. Flag options that are high-risk or under-specified.
6. **Ideation phase**: If the phase is ideation, apply the ideation checklist before deciding.
7. **Decide**: Pick one or more next steps; prioritize and assign the next command or subagent.
8. **Update memory**: Use **project-memory** to update `docs/README.md` with the chosen next steps and any open decisions.
9. **Handoff**: Clearly suggest which command to run next and summarize the plan.
