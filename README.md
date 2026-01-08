# Research Project Template

[![license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://github.com/yp-edu/research-project-template/blob/main/LICENSE)
[![uv](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/uv/main/assets/badge/v0.json)](https://github.com/astral-sh/uv)
[![Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://github.com/astral-sh/ruff)
[![python versions](https://img.shields.io/badge/python-3.11%20|%203.12-blue)](https://www.python.org/downloads/)
[![Latex](https://img.shields.io/badge/latex-grey.svg?logo=latex)](https://www.latex-project.org/)
![ci](https://github.com/yp-edu/research-project-template/actions/workflows/ci.yml/badge.svg)

KISS research project template built for Cursor IDE, Python, and LaTeX.

## AI Config

This repo assumes you are using Cursor IDE, hence the [`.cursor`](.cursor) folder, which you should tailor to your needs (especially the [rules](.cursor/rules/)). See [below](#bmad-research-project-accelerator) for how to install the BMad Research Project Accelerator.

You'll find MCP servers configured in [`.cursor/mcp.json`](.cursor/mcp.json), be sure to check the `--storage-path` of the `arxiv-mcp-server`. You can find more MCP servers in [Playbooks](https://playbooks.com/) or [Smithery](https://smithery.ai/).

## Latex Workshop Config

After setting-up Latex (e.g. with TeX Live), download the latex workshop extension from [here](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop).

This project uses the following latex workshop outdir: `%WORKSPACE_FOLDER%/latex/build/`.

## Python Config

Using `uv` to manage python dependencies and run scripts.

## Scripts

This project uses [Just](https://github.com/casey/just) to manage scripts, refer to their instructions for installation.

## Cluster Config

This project is cluster-ready.

- See [`launch`](./launch/) to launch scripts with slurm.
- See [`notebooks`](./notebooks/) to run notebooks on a cluster's JupyterHub.

## BMad Research Project Accelerator

This template includes the **Research Project Accelerator** BMad module, see [BMad Documentation](https://github.com/bmad-code-org/BMAD-METHOD) to learn more. To get started:

1. Install BMad (if not already installed):
   ```bash
   npx bmad-method@alpha install
   ```
   When prompted:
   - Select "Add/Install custom modules"
   - Enter the path: `_bmad-research-project`

2. Run the **Project Setup** workflow first to configure your project.

See [`_bmad-research-project/README.md`](_bmad-research-project/README.md) for full documentation.
