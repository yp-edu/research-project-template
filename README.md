# Research Project Template

[![license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://github.com/yp-edu/research-project-template/blob/main/LICENSE)
[![uv](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/uv/main/assets/badge/v0.json)](https://github.com/astral-sh/uv)
[![Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://github.com/astral-sh/ruff)
[![python versions](https://img.shields.io/badge/python-3.11%20|%203.12-blue)](https://www.python.org/downloads/)
[![Latex](https://img.shields.io/badge/latex-grey.svg?logo=latex)](https://www.latex-project.org/)
[![Typst](https://img.shields.io/badge/typst-grey.svg?logo=typst)](https://github.com/typst/typst)
![ci](https://github.com/yp-edu/research-project-template/actions/workflows/ci.yml/badge.svg)

KISS research project template built for Cursor IDE, Python, LaTeX and Typst.

## AI Config

This repo assumes you are using Cursor IDE, hence the [`.cursor`](.cursor) folder, which you should tailor to your needs (especially the [rules](.cursor/rules/)).

You'll find MCP servers configured in [`.cursor/mcp.json`](.cursor/mcp.json), be sure to check the `--storage-path` of the `arxiv-mcp-server`. You can find more MCP servers in [Playbooks](https://playbooks.com/) or [Smithery](https://smithery.ai/).

## Latex Workshop Config

After setting-up Latex (e.g. with TeX Live), download the latex workshop extension from [here](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop).

This project uses the following latex workshop outdir: `%WORKSPACE_FOLDER%/latex/build/`.

## Typst Config

After setting up Typst, use `typst watch typst/main.typ typst/main.pdf` to instantly compile the project. Tinymist Typst VSCode extension is recommended.

## Python Config

Using `uv` to manage python dependencies and run scripts.

## Scripts

This project uses [Just](https://github.com/casey/just) to manage scripts, refer to their instructions for installation.

## Cluster Config

This project is cluster-ready.

- See [`launch`](./launch/) to launch scripts with slurm.
- See [`notebooks`](./notebooks/) to run notebooks on a cluster's JupyterHub.

## Variables

Search and replace the following variables for a fast setup:

- `<NAME>`: Name of the author.
- `<LAB>`: Lab of the author.
- `<EMAIL>`: Email of the author.
