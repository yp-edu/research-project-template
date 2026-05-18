# Repository Guidance

## Project Contract

- This repository is a research project template for turning user ideas, intuitions, and hunches into research questions, experiments, claims, decisions, and paper text.
- First setup establishes the project slug, Python package name, paper title, documentation identity, and any cluster paths in `Justfile`.
- If the project name changes, derive the package name with `project_name.replace("-", "_")`, then rename `src/research_project_template/` and update imports, tests, notebooks, and `pyproject.toml`.
- Keep project-specific identity in `docs/`, `latex/`, `pyproject.toml`, and cluster config, not in this file.

## Structure

- `src/` contains reusable package code.
- `scripts/` contains runnable experiment entrypoints.
- `configs/` contains reproducible experiment configuration.
- `docs/` contains project memory: status, questions, claims, decisions, literature, and experiment conclusions.
- `latex/` contains the paper and bibliography.
- `results/` is untracked scratch space for raw logs, outputs, checkpoints, generated artifacts, and bulky run data.
- `notebooks/` is for exploration; move reusable logic to `src/` and reproducible runs to `scripts/` plus `configs/`.

## Documentation

- `docs/README.md` is the project-status dashboard: current state, key claims, decisions, active questions, recent experiments, and links.
- Every first-level folder under `docs/` has its own `AGENTS.md` with local documentation rules.
- `docs/*/README.md` files are category dashboards; they start with only a title and grow into linked status lists and factual summaries, not instructions.
- Research questions should converge to a claim, a decision to defer or cancel, or an experiment that can answer them.
- Experiments should record conclusions after they run; raw outputs stay in `results/`.
- Link docs, configs, scripts, results, and paper sections when the link improves traceability.

## Ideation And Experiments

- Treat ideation as collaborative and supervisor-led unless asked otherwise.
- Push back constructively during ideation and writing: question the value of the work, the likely reviewer objection, and what evidence would make the contribution worth testing or publishing.
- Convert vague ideas into testable questions by making assumptions, expected evidence, metrics, and decision rules explicit.
- Prefer defining an experiment before coding: hypothesis, config, metric, baseline or comparison, expected result, and what outcome would change the project direction.
- Do not run experiments unless explicitly asked; tests and minimal local debug or smoke runs are allowed, but cluster jobs are not.
- Implement only the code needed to answer the current question.
- Keep scripts thin and config-driven so the same entrypoint can run locally and inside Slurm jobs.
- Store experiment configs under `configs/` with names that identify the run without opening raw logs.
- Store cluster launch definitions as experiment artifacts under `docs/experiments/to-launch/`, then move them to `docs/experiments/archived/` after results are documented.
- After a run, update the experiment note with actual results, result location, conclusion, and any resulting claim or decision.

## Python And Runs

- Use `uv` for Python work: `uv sync` for installation, `uv add <package>` for dependencies, and `uv run ...` for commands.
- Do not rely on manual virtualenv activation or `pip install` by default.
- Run scripts with `uv run`, for example `uv run -m scripts.run_experiment demo=first`.
- Prefer reusable `just` recipes for common commands: `just checks`, `just tests`, `just run demo=first`, and `just launch-all --dry-run`.
- Put stable reusable logic in `src/`; test stable, reusable, or high-risk package logic with `uv run pytest`.

## Paper

- Write paper material in `latex/` throughout the project, even when rough.
- Keep claims aligned with code, configs, literature notes, and experiment results.
- Consolidate coherent background, related work, method, and result narratives into `latex/` as evidence accumulates.
- Add appendices when they improve traceability or credibility: broader experiments, initial setup, additional exposition, software, models, datasets, prompts, hyperparameters, or implementation details.
- Review paper drafts thoroughly for contribution, evidence, missing baselines, limitations, reviewer objections, claim strength, and consistency with documented experiments.
