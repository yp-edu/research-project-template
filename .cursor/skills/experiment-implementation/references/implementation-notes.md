# Experiment Implementation (This Template)

- **Entrypoint**: `scripts/run_experiment.py` (orchestrator); run with `uv run -m scripts.run_experiment` (from repo root). By default, no script runs; pass a script and config (e.g. `demo=first`).
- **Scripts**: Each script is a module under `scripts/` with a `main(cfg)` function, imported and dispatched by the orchestrator. Add new scripts by creating `scripts/<name>.py`, adding `configs/<name>/`, and registering in `SCRIPTS` in `run_experiment.py`.
- **Configs**: Add or edit YAML under `configs/<script_name>/`. Defaults in `configs/run_experiment.yaml` use `optional <script>: null`; new scripts require a new default line and a matching config directory.
- **Outputs**: Hydra writes to `results/hydra/...` (git-ignored). Logging (e.g. wandb) is configured in the default config.
- **Tests**: Add or extend tests under `tests/` (e.g. `tests/unit/test_core.py`); run with `uv run pytest`.
- **Cluster**: For Slurm/submitit, see **Cluster Config** in the root `README.md`, `configs/hydra/launcher/`, and the `Justfile` (`just launch`, sync/retrieve recipes).
- **Code**: Core logic lives in `src/research_project_template/`; import in script modules as needed. Keep changes small and reviewable.
