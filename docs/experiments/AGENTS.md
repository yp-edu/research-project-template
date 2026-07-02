# Experiment Guidance

- Experiment notes connect a research question to evidence.
- Before a run, record the question, hypothesis, config or command, exact launch script, metric, baseline or comparison, expected result, and decision rule when they are known.
- After a run, record the actual result, result location under `results/`, conclusion, and any resulting claim or decision.
- Keep raw logs and bulky artifacts in `results/`; keep conclusions, important links, and final figures here or in `latex/`.
- Prefer reusable logic in `src/`, thin independent entrypoints in `scripts/`, and committed run definitions in `configs/<script-name>/`.
- Use `templates/` for Slurm script starting points.
- Use `to-launch/` for planned run notes and scripts.
- Use `archived/` for completed run notes and scripts after results are documented.
- Name experiment notes and launch scripts `YYYY-MM-DD-short-title.md` or `YYYY-MM-DD-short-title.sh` using the planned launch date.
- Keep category-level summaries in `README.md` factual; leave it title-only until there is something real to summarize.
- Track experiment files from the category dashboard as `[experiment](YYYY-MM-DD-experiment-title.md): Pending`, then replace `Pending` with the conclusion, decision, claim, or result link after the run.
