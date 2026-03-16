---
name: research-workflow
description: "Guides the project through its main research phases (setup, ideation, baseline, contribution, review) with lightweight, conversational checklists."
---

# Research Workflow Skill

## When to Use

- The user is asking what to do next in the project.
- You need to map tasks onto phases (setup, ideation, baseline, contribution, review).
- You want a phase-specific checklist before starting a session (e.g., baseline or contribution work).

## Instructions

- Use `references/phases-overview.md` to recall the main phases and their goals.
- For **baseline development**, load `references/baseline-checklist.md`.
- For **contribution development**, load `references/contribution-checklist.md`.
- For **review & revision**, combine this skill with the `review-revision` skill.

When advising the user:

1. Confirm the current phase and desired outcome.
2. Walk through the relevant checklist with the user, briefly confirming each item.
3. Recommend a focused next step and which subagent/command to use (e.g., `/design-experiments` with the research-engineer, `/write-paper`, `/review-paper`).
