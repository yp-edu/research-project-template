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


@hydra.main(config_path="../configs", config_name="loss.yaml", version_base=None)
def main(cfg: DictConfig):
    loss = cfg.param_group.x**2 + cfg.param_group.y**2

    dict_config = OmegaConf.to_container(cfg, resolve=True, throw_on_missing=True)
    with wandb.init(
        entity=cfg.wandb.entity, project=cfg.wandb.project, mode=cfg.wandb.mode, config=dict_config
    ) as run:
        run.log({"loss": loss})
        logger.info(f"Loss: {loss}")

    return loss


if __name__ == "__main__":
    main()
