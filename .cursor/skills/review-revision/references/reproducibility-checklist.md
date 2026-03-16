# Reproducibility Checklist (Internal)

Check the following for each main result:

1. **Entry point**: There is a clear command or script to reproduce the result (e.g., `python scripts/run_experiment.py ...` or a launcher script).
2. **Configs**: All important hyperparameters, seeds, and dataset paths are specified in version-controlled config files.
3. **Data**: Datasets and preprocessing steps are documented or scripted.
4. **Metrics**: Metric definitions and aggregation (e.g., mean, std, number of runs) are clear.
5. **Logging**: Outputs (logs, checkpoints, tables) are stored in a predictable location.
6. **Randomness**: Randomness is controlled where appropriate (seeds, determinism flags, etc.).
