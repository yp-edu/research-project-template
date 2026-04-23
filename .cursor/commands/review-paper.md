# Review Paper

## Overview

Entry point for review: scope the pass, run structured review checks, sanity-check reproducibility, and produce a prioritized issue list.

## Skills Used

- **paper-review-strengths** — Identify strengths with evidence.
- **paper-review-weaknesses** — Identify weaknesses with evidence.
- **paper-review-questions** — Open questions and missing details.
- **paper-review-contribution** — Evaluate novelty and contribution clarity.
- **reproducibility-check** — Reproducibility checklist for main results.
- **project-memory** — Read the main memory and experiment memory before reviewing.

## Subagents

- **research-reviewer** — Quality assurance and review passes.

## Agent Instructions

1. **Delegate well**: Use the **research-reviewer** agent as the default specialist for this command.
2. **Scope**: Ask whether to focus on paper only, paper + experiments, or paper + experiments + full reproducibility. Clarify target (e.g. internal milestone, submission).
3. **Read memory**: Inspect `docs/README.md` and `docs/experiments/README.md` before reviewing so the critique is grounded in the current state.
4. **Strengths**: Use the **paper-review-strengths** skill to list what works well, with evidence (section, figure, table, config).
5. **Weaknesses**: Use the **paper-review-weaknesses** skill to list what is lacking or problematic, with pointers and suggested fixes.
6. **Questions**: Use the **paper-review-questions** skill to list open questions or missing details a reviewer would ask; suggest where to add answers.
7. **Contribution**: Use the **paper-review-contribution** skill to assess whether contributions are clearly stated and supported; note novelty clarity.
8. **Reproducibility** (if in scope): Use the **reproducibility-check** skill to run the checklist for each main result; report satisfied items and gaps.
9. **Report**: Group findings by severity (critical, high, medium, low). For each issue, suggest a concrete next step and which command or subagent to use (e.g. `/write-paper`, `/design-experiments`). Provide a brief readiness assessment and a prioritized follow-up list.
