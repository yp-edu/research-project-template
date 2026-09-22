# Experiment Guidance

- Experiment notes connect a research question to evidence.
- Before a run, record the question, hypothesis, config and command, exact launch script, metric, baseline or comparison, expected result, and decision rule when they are known.
- When testing an explanation, identify the strongest plausible alternative and the outcomes that would distinguish them. Prefer the smallest feasible experiment that could change the research decision.
- After a run, record the exact code commit, config and command, seeds, data and model versions, material environment or hardware details, actual result, limitations, conclusion, and any resulting claim or decision.
- Distinguish planned tests from findings discovered after inspecting results. Treat unexpected findings as exploratory until supported by an appropriate follow-up.
- When results motivate a revised question, assumption, or evaluation protocol, preserve the original plan and conclusion and link the revised direction. Do not reinterpret a failed original test as success under a revised framing.
- Generate all experiment artifacts under `results/`, including raw logs, checkpoints, metrics, figures, and rendered outputs; do not create `output/` or `outputs/` directories.
- Keep conclusions and important links here. Copy only publication-ready figures into `latex/` when the paper needs to track them as sources.
- Use `templates/` for Slurm script starting points.
- Use `to-launch/` for planned run notes and scripts.
- Use `archived/` for completed run notes and scripts after results are documented.
- Name experiment notes and launch scripts `YYYY-MM-DD-short-title.md` or `YYYY-MM-DD-short-title.sh` using the planned launch date.
- Track experiment files from the category dashboard as `[experiment](YYYY-MM-DD-experiment-title.md): Pending`, then replace `Pending` with the conclusion, decision, claim, or result link after the run.
