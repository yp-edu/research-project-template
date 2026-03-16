"""
Orchestrator for experiment scripts.

Run a script with its config:

```bash
uv run -m scripts.run_experiment demo=first
```

By default, no script runs. Sweep with:

```bash
uv run -m scripts.run_experiment -m demo=??? \
    hydra/sweeper=groups_optuna \
    hydra/launcher=local
```
"""

from loguru import logger
import hydra
from omegaconf import DictConfig, OmegaConf

from scripts.demo import main as run_demo

SCRIPTS = {"demo": run_demo}


@hydra.main(config_path="../configs", config_name="run_experiment.yaml", version_base=None)
def main(cfg: DictConfig):
    selected = [name for name in SCRIPTS if OmegaConf.select(cfg, name, default=None) is not None]

    if not selected:
        logger.info("No script specified; nothing to run")
        return
    if len(selected) > 1:
        logger.error(f"Only one script per run; got {selected}")
        raise SystemExit(1)

    name = selected[0]
    SCRIPTS[name](cfg)


if __name__ == "__main__":
    main()
