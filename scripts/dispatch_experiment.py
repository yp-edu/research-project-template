"""Hydra-launched wrapper that runs one downstream experiment command.

The dispatcher itself stays lightweight so native Hydra launchers and sweepers can
allocate the job before importing project-specific experiment dependencies.
"""

from __future__ import annotations

import json
import shlex
import subprocess
from collections.abc import Iterable, Mapping
from typing import Any

import hydra
from hydra.utils import get_original_cwd
from omegaconf import DictConfig, ListConfig, OmegaConf


MODE_PREFIXES = {
    "set": "",
    "add": "+",
    "upsert": "++",
}
RUN_EXPERIMENT_MODULE = "scripts.run_experiment"


def _format_value(value: Any) -> str:
    resolved = OmegaConf.to_container(value, resolve=True) if isinstance(value, (DictConfig, ListConfig)) else value
    if isinstance(resolved, bool):
        return "true" if resolved else "false"
    if resolved is None:
        return "null"
    if isinstance(resolved, str):
        return resolved
    if isinstance(resolved, (int, float)):
        return str(resolved)
    return json.dumps(resolved, separators=(",", ":"))


def _flatten_items(value: Any, prefix: str = "") -> Iterable[tuple[str, Any]]:
    if isinstance(value, DictConfig):
        iterator = value.items()
    elif isinstance(value, Mapping):
        iterator = value.items()
    else:
        yield prefix, value
        return

    for key, nested_value in iterator:
        nested_key = f"{prefix}.{key}" if prefix else str(key)
        if isinstance(nested_value, (DictConfig, Mapping)):
            yield from _flatten_items(nested_value, nested_key)
        else:
            yield nested_key, nested_value


def flatten_downstream_overrides(downstream: DictConfig | Mapping[str, Any] | None) -> list[str]:
    """Flatten downstream.set/add/upsert into Hydra override strings."""
    if downstream is None:
        return []

    overrides: list[str] = []
    unknown_modes = set(downstream) - set(MODE_PREFIXES)
    if unknown_modes:
        modes = ", ".join(sorted(unknown_modes))
        raise ValueError(f"Unknown downstream override mode(s): {modes}")

    for mode, prefix in MODE_PREFIXES.items():
        values = downstream.get(mode)
        if values is None:
            continue
        for key, value in _flatten_items(values):
            overrides.append(f"{prefix}{key}={_format_value(value)}")
    return overrides


def build_downstream_command(cfg: DictConfig) -> list[str]:
    command = ["uv", "run", "-m", RUN_EXPERIMENT_MODULE]
    if cfg.target.config_name is not None:
        command.extend(["--config-name", cfg.target.config_name])
    command.extend(flatten_downstream_overrides(OmegaConf.select(cfg, "downstream")))
    return command


@hydra.main(config_path="../configs", config_name="dispatch_experiment.yaml", version_base=None)
def main(cfg: DictConfig) -> None:
    command = build_downstream_command(cfg)
    print(shlex.join(command), flush=True)
    if cfg.dry_run:
        return
    subprocess.run(command, cwd=get_original_cwd(), check=True)


if __name__ == "__main__":
    main()
