"""Demo experiment script."""

from loguru import logger
from omegaconf import DictConfig, OmegaConf
import wandb
import sys
import time

from research_project_template.core import loss_function


def main(cfg: DictConfig):
    logger.info(f"Python version: {sys.version}")
    loss = loss_function(cfg.demo.x, cfg.demo.y)

    dict_config = OmegaConf.to_container(cfg, resolve=True, throw_on_missing=True)
    with wandb.init(
        entity=cfg.wandb.entity, project=cfg.wandb.project, mode=cfg.wandb.mode, config=dict_config
    ) as run:
        for i in range(60):
            run.log({"loss": loss, "step": i})
            logger.info(f"Step {i}: Loss: {loss}")
            time.sleep(1)

    return loss
