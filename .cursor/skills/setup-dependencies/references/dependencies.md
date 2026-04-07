# Setup Dependencies and Environment

## Python / uv

- Install dependencies with `uv sync`.
- Run scripts with `uv run -m scripts.run_experiment ...`.

## LaTeX

- Install a LaTeX distribution (e.g. TeX Live) if writing paper.
- The LaTeX Workshop outdir is `%WORKSPACE_FOLDER%/latex/build/`.

## Cluster (optional)

- Cluster workflow is documented in the root `README.md` (**Cluster Config**). Hydra submitit launchers are under `configs/hydra/launcher/`; git sync and retrieval use the `Justfile`.

## Adding dependencies

- Use `uv add <package>` for new Python dependencies.
- Keep dependency changes minimal and track them in `pyproject.toml` / `uv.lock`.
