"""
Run a demo experiment script.

Single run with:

```bash
uv run -m scripts.run_experiment \
    group1=first \
    group2=nested/first
```

Sweep with:

```bash
uv run -m scripts.run_experiment -m \
    hydra/sweeper=groups_optuna \
    hydra/launcher=local
```
"""

from loguru import logger
import hydra
from omegaconf import DictConfig, OmegaConf
import wandb
import sys

from research_project_template.core import loss_function


@hydra.main(config_path="../configs", config_name="run_experiment.yaml", version_base=None)
def main(cfg: DictConfig):
    logger.info(f"Python version: {sys.version}")
    loss = loss_function(cfg.group1.x, cfg.group2.nested.y)

    dict_config = OmegaConf.to_container(cfg, resolve=True, throw_on_missing=True)
    with wandb.init(
        entity=cfg.wandb.entity, project=cfg.wandb.project, mode=cfg.wandb.mode, config=dict_config
    ) as run:
        run.log({"loss": loss})
        logger.info(f"Loss: {loss}")

    return loss


if __name__ == "__main__":
    main()
