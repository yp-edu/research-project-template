# Review Paper

## Overview

Repeatable workflow to proofread and sanity-check the paper and experiments: scope the review, run structured passes (strengths, weaknesses, questions, contribution), run reproducibility checks, then produce an issue list and next steps. Invoke the **research-reviewer** subagent.

## Skills Used

- **paper-review-strengths** — Identify strengths with evidence.
- **paper-review-weaknesses** — Identify weaknesses with evidence.
- **paper-review-questions** — Open questions and missing details.
- **paper-review-contribution** — Evaluate novelty and contribution clarity.
- **reproducibility-check** — Reproducibility checklist for main results.

## Subagents

- **research-reviewer** — Quality assurance and review passes.

## Agent Instructions

1. **Scope**: Ask whether to focus on paper only, paper + experiments, or paper + experiments + full reproducibility. Clarify target (e.g. internal milestone, submission).
2. **Strengths**: Use the **paper-review-strengths** skill to list what works well, with evidence (section, figure, table, config).
3. **Weaknesses**: Use the **paper-review-weaknesses** skill to list what is lacking or problematic, with pointers and suggested fixes.
4. **Questions**: Use the **paper-review-questions** skill to list open questions or missing details a reviewer would ask; suggest where to add answers.
5. **Contribution**: Use the **paper-review-contribution** skill to assess whether contributions are clearly stated and supported; note novelty clarity.
6. **Reproducibility** (if in scope): Use the **reproducibility-check** skill to run the checklist for each main result; report satisfied items and gaps.
7. **Report**: Group findings by severity (critical, high, medium, low). For each issue, suggest a concrete next step and which command or subagent to use (e.g. `/write-paper`, `/design-experiments`). Provide a brief readiness assessment and a prioritized follow-up list.
