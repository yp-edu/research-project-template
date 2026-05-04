# AGENTS.md

## Getting Started

- First setup should establish the project slug, Python package name, paper title, basic docs identity, and any cluster paths in `Justfile`.
- If the project name changes, derive the package name with `project_name.replace("-", "_")`, then rename `src/research_project_template/` and update imports, tests, notebooks, and `pyproject.toml`.
- Use `uv` for Python work: `uv sync` for installation, `uv add <package>` for dependencies, and `uv run ...` for commands. Do not rely on manual virtualenv activation or `pip install` by default.
- Keep project-specific identity in `docs/` and `latex/`, not in this file.

## Project Structure

- `src/` contains reusable package code.
- `scripts/` contains runnable entrypoints.
- `configs/` contains reproducible experiment configuration.
- `docs/` contains project memory, research questions, literature notes, and experiment conclusions.
- `latex/` contains the paper and bibliography.
- `results/` is untracked scratch space for raw logs, outputs, checkpoints, and generated artifacts.
- `notebooks/` is for exploration; move reusable logic to `src/` and reproducible runs to `scripts/` plus `configs/`.

## Documenting The Project

- Keep `docs/README.md` as a short dashboard with the current state, key links, and a few TL;DR decisions.
- Use `docs/questions/` for research questions, limitations, low-hanging fruits, scientific locks, and explored or abandoned directions.
- Use `docs/literature/` for simple paper notes and take-home messages.
- Use `docs/experiments/` for experiment plans and concise conclusions.
- Notes may be lightweight; a file with only `# Title` and clear bullets is acceptable.

## Ideation

- Treat ideation as supervisor-led unless asked otherwise.
- Capture research directions, assumptions, risks, and open decisions in `docs/questions/`.
- Keep only short summaries in `docs/README.md`; the authoritative evolving story belongs in `latex/`.

## Literature Review

- Keep literature notes simple: citation/link, context, take-home message, and relevance to the project.
- Consolidate coherent background and related-work material into `latex/` as the project evolves.
- Cross-reference notes, paper sections, and experiments when useful.

## Experimenting

- Define the experiment before coding when possible: hypothesis, expected result, config, metric, and decision rule.
- Implement only the code needed to answer the current question.
- After running, update the experiment note with actual results and a concise conclusion.

## Writing The Paper

- Write in `latex/` throughout the project, even if the first version is rough.
- Keep claims aligned with code, configs, literature notes, and experiment results.
- Prefer quick draft sections early over waiting for polished final results.

## Packaging

- Put reusable logic in the Python package under `src/` so scripts, notebooks, and future projects can import it.
- Keep scripts thin; they should orchestrate package code rather than contain reusable implementations.
- Update `pyproject.toml` with `uv add <package>` instead of ad hoc installs.

## Scripts

- Run scripts with `uv run`, for example `uv run -m scripts.run_experiment demo=first`.
- Prefer reusable `just` recipes for common commands.
- Keep scripts config-driven so the same entrypoint can run locally and on a cluster.

## Config

- Describe each experiment through config whenever practical.
- Keep config names meaningful enough to understand the run without opening raw logs.
- Prefer explicit overrides and committed configs for reproducibility.

## Results

- Use `results/` as scratch space for raw outputs, logs, checkpoints, and generated files.
- Do not treat `results/` as project memory.
- Move clear conclusions, links to important runs, or final figures into `docs/experiments/` or `latex/`.

## Cross-Reference

- Link docs, configs, scripts, results, and paper sections when it improves traceability.
- Important claims should point to evidence or clearly marked assumptions.
- Prefer a few useful links over exhaustive bookkeeping.

## Testing

- Do not over-test fast-changing research code.
- Test stable, reusable, or high-risk package logic.
- Use `uv run pytest` for tests and keep coverage thresholds pragmatic.
