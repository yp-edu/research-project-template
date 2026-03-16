---
name: section-editing
description: "Small, reviewable LaTeX edits and rewrite patterns for paper sections."
---

# Section Editing Skill

## When to Use

- The user wants to edit a specific LaTeX section (introduction, methods, experiments, etc.) with small, reviewable changes.
- You need to apply consistent rewrite patterns (one claim per sentence, evidence-backed claims).

## Instructions

- Use `references/editing-rules.md` for scope, LaTeX paths, and rewrite patterns.
- **Scope**: One section or one coherent change at a time. Edit under `latex/sections/`.
- **Evidence**: Before adding or keeping a claim, verify the evidence (result, config, table) exists; if not, remove the claim or mark as TODO.
- **Output**: Concrete diff-style edits (file + before/after or explicit replacement). After editing, summarize what changed and what evidence supports new or updated claims.
