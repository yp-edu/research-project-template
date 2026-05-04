# Documentation Guidance

## Scope

- `docs/` is the project memory: current status, questions, claims, decisions, literature, experiment plans, and experiment conclusions.
- `docs/README.md` is the project-status dashboard.
- First-level folders under `docs/` have their own `AGENTS.md` files for local rules.
- Category `README.md` files are dashboards; they start with only a title and grow into linked status lists and factual summaries.
- Detailed notes live in dedicated files; the category `README.md` links them as `[item](item.md): Pending` until the item has a conclusion, claim, decision, or other outcome.
- Raw logs, checkpoints, generated files, and bulky outputs stay in `results/`.

## Style

- Prefer facts over instructions: current state, evidence, conclusions, links, and open questions.
- Keep notes short unless the project needs the detail for traceability.
- Link questions, experiments, claims, decisions, literature notes, configs, scripts, results, and paper sections when the link changes how a reader interprets the project.
- Move coherent paper prose, background, related work, methods, and result narratives into `latex/`.
