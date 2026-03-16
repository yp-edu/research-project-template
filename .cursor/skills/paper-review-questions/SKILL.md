---
name: paper-review-questions
description: "Identify open questions and missing details (what a reviewer would ask)."
---

# Paper Review: Questions

## When to Use

- You are running a structured review pass (e.g. **review-paper** command) and need to list open questions or missing details.
- The user wants to anticipate reviewer questions or gaps.

## Instructions

- List questions a careful reader or reviewer would ask: missing details (e.g. hyperparameters, dataset splits), unclear claims (e.g. "how was X computed?"), or unresolved points (e.g. "why not compare to Y?").
- For each question, point to the place in the paper or setup where the answer should be (or is missing).
- Output: A short list of questions with a pointer (e.g. "§4: which seeds?", "config: no dataset path"). Suggest where to add the answer (section, table, config).
