"""Demo experiment script.

Run with a matching config from configs/demo/:

    uv run -m scripts.demo --config-name 2026-06-23-smoke
"""

from __future__ import annotations

import sys
import time
from pathlib import Path

import hydra
import wandb
from loguru import logger
from omegaconf import DictConfig, OmegaConf

from research_project_template.core import loss_function


@hydra.main(config_path="../configs/demo", config_name="base", version_base=None)
def main(cfg: DictConfig):
    logger.info(f"Python version: {sys.version}")
    loss = loss_function(cfg.x, cfg.y)
    output_dir = Path(cfg.output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)

    dict_config = OmegaConf.to_container(cfg, resolve=True, throw_on_missing=True)
    with wandb.init(
        entity=cfg.wandb.entity,
        project=cfg.wandb.project,
        mode=cfg.wandb.mode,
        dir=output_dir,
        config=dict_config,
    ) as run:
        for i in range(cfg.steps):
            run.log({"loss": loss, "step": i})
            logger.info(f"Step {i}: Loss: {loss}")
            time.sleep(cfg.sleep_seconds)

    return loss


if __name__ == "__main__":
    main()
