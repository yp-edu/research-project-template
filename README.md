# Paper Template

[![license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://github.com/yp-edu/paper-template/blob/main/LICENSE)
[![uv](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/uv/main/assets/badge/v0.json)](https://github.com/astral-sh/uv)
[![Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://github.com/astral-sh/ruff)
[![python versions](https://img.shields.io/badge/python-3.11-blue)](https://www.python.org/downloads/)
![ci](https://github.com/yp-edu/paper-template/actions/workflows/ci.yml/badge.svg)

KISS paper template built for Cursor IDE, Python and LaTeX.

## AI Config

This repo assumes you are using Cursor IDE, hence the [`.cursorrules`](.cursorrules) file, which you should tailor to your needs.

You'll find MCP servers configured in [`.cursor/mcp.json`](.cursor/mcp.json), be sure to check the `--storage-path` of the `arxiv-mcp-server`. You can find more MCP servers in [Playbooks](https://playbooks.com/) or [Smithery](https://smithery.ai/).

## Latex Workshop Config

Download the latex workshop extension from [here](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop).

This project uses the following latex workshop outdir: `%WORKSPACE_FOLDER%/latex/build/`

## Python Config

Using `uv` to manage python dependencies.

## Variables

Search and replace the following variables for a fast setup:

- `<NAME>`: Name of the author.
- `<LAB>`: Lab of the author.
- `<EMAIL>`: Email of the author.
