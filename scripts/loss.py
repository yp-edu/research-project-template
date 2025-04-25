"""
Run a useless loss function script.

Run with:

```bash
uv run python -m scripts.loss -m
```
"""

from loguru import logger
import hydra
from omegaconf import DictConfig, OmegaConf
import wandb
import sys

from paper_template.core import loss_function


@hydra.main(config_path="../configs", config_name="loss.yaml", version_base=None)
def main(cfg: DictConfig):
    logger.info(f"Python version: {sys.version}")
    loss = loss_function(cfg.param_group.x, cfg.param_group.y)

    dict_config = OmegaConf.to_container(cfg, resolve=True, throw_on_missing=True)
    with wandb.init(
        entity=cfg.wandb.entity, project=cfg.wandb.project, mode=cfg.wandb.mode, config=dict_config
    ) as run:
        run.log({"loss": loss})
        logger.info(f"Loss: {loss}")

    return loss


if __name__ == "__main__":
    main()
