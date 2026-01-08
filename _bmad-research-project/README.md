# Research Project Accelerator

Accelerate the complete research cycle from project setup and ideation through literature review, experimental implementation, and paper writing, leveraging structured templates and workflows optimized for neural network interpretability and (multi-agent) reinforcement learning research.

## Overview

This module provides:

- **5 Specialized Agents** for different aspects of research (Advisor, Scholar, Engineer, Writer, Reviewer)
- **5 Stage-Based Workflows** covering the complete research lifecycle
- **Automated Project Setup** with template customization
- **Literature Review Support** with systematic discovery and analysis
- **Experimental Design & Implementation** with reproducibility best practices
- **Paper Writing Guidance** with academic standards and conference requirements
- **Quality Review & Revision** workflows for paper improvement

## Installation

Install the module using BMAD:

1. Install BMad (if not already installed):
   ```bash
   npx bmad-method@alpha install
   ```

2. When prompted:
   - Select "Add/Install custom modules"
   - Enter the path: `_bmad-research-project`

During installation, you'll be asked for:
- Your name (for paper templates)
- Your lab/institution (optional)
- Your email address
- Your research project focus/description

The installer will automatically:
- Replace placeholders (`<NAME>`, `<LAB>`, `<EMAIL>`) in project files
- Set up the `results/` directory for outputs
- Configure the module for your research domain

## Components

This module provides **5 specialized agents** and **5 stage-based workflows**:

### Agents

- 🎯 **Advisor** - Research Strategy & Direction
- 📚 **Scholar** - Literature Review & Research
- 🔧 **Engineer** - Experimental Design & Implementation
- ✍️ **Writer** - Academic Paper Writing
- 🔍 **Reviewer** - Quality Assurance & Review

**See [agents/README.md](agents/README.md) for complete agent documentation.**

### Workflows

- **PS** - Project Setup
- **IL** - Ideation & Literature
- **BD** - Baseline Development
- **CD** - Contribution Development
- **RR** - Review & Revision

**See [workflows/README.md](workflows/README.md) for complete workflow documentation.**

## Quick Start

After [installation](#installation), start with:

1. **Project Setup:**
   ```
   agent research-advisor
   *PS  (Project Setup workflow)
   ```

2. **Research Planning:**
   ```
   agent research-advisor
   *IL  (Ideation & Literature workflow)
   ```

3. **Or chat with an agent:**
   ```
   agent research-advisor
   *CH  (Chat with Advisor)
   ```

For detailed agent and workflow documentation, see:
- [agents/README.md](agents/README.md) - Complete agent guide
- [workflows/README.md](workflows/README.md) - Complete workflow guide

## Module Structure

```
research-project/
├── agents/                    # Agent definitions
│   ├── research-advisor.yaml
│   ├── research-scholar.yaml
│   ├── research-engineer.yaml
│   ├── research-writer.yaml
│   └── research-reviewer.yaml
├── workflows/                 # Workflow folders
│   ├── project-setup/
│   │   └── README.md
│   ├── ideation-literature/
│   │   └── README.md
│   ├── baseline-development/
│   │   └── README.md
│   ├── contribution-development/
│   │   └── README.md
│   └── review-revision/
│       └── README.md
├── templates/                 # Shared templates
│   ├── paper-review-template.md
│   ├── experiment-template.md
│   ├── literature-review-template.md
│   └── paper-outline-template.md
├── data/                      # Module data
│   ├── conference-requirements.md
│   ├── reproducibility-checklist.md
│   └── interpretability-tools-reference.md
├── docs/                      # Module documentation
│   └── TODO.md                # Development roadmap
├── _module-installer/         # Installation configuration
│   ├── installer.js           # Custom installation logic
│   └── assets/                # Install assets
├── module.yaml                # Module configuration
└── README.md                  # This file
```

## Configuration

The module can be configured in `_bmad/research-project/config.yaml`

**Key Settings:**

- **project_name**: Default project name (research-project-template)
- **output_path**: Where research outputs are saved (results/)
- **author_name**: Your name (used in paper templates)
- **author_lab**: Your lab/institution (optional, used in paper templates)
- **author_email**: Your email address (used in project metadata)
- **project_description**: Your research focus (determines field scope and customization)
- **field_scope**: Auto-derived from project_description

## Usage Examples

### Starting a New Research Project

1. Run Project Setup to configure your project:
   ```
   agent research-advisor
   *PS
   ```

2. Plan your research and review literature:
   ```
   agent research-advisor
   *IL
   ```

### Developing Experiments

1. Implement baselines:
   ```
   agent research-engineer
   *BD  (Baseline Development)
   ```

2. Develop contributions:
   ```
   agent research-engineer
   *CD  (Contribution Development)
   ```

### Writing and Reviewing Papers

1. Review paper quality:
   ```
   agent research-reviewer
   *RR  (Review & Revision)
   ```

For more examples and detailed workflows, see [workflows/README.md](workflows/README.md).

## Development Status

This module is currently:

- [x] Structure created
- [x] Installer configured
- [x] Agents created (5 agents with sidecar structures)
- [x] Workflow plans created (5 workflows documented)
- [ ] Workflows implemented (plans ready, implementation pending)
- [ ] Full testing complete

**Note:** Workflows are planned and documented but not yet fully implemented. See individual workflow folders (`workflows/*/README.md`) for detailed plans. To implement workflows, use the `create-workflow` workflow with each workflow folder.

## Contributing

To extend this module:

1. Add new agents using `create-agent` workflow
2. Implement workflows using `create-workflow` workflow (reference README.md in each workflow folder)
3. Update the installer configuration in `module.yaml` if needed
4. Test thoroughly with real research projects

## Requirements

- BMAD Method version 6.0.0-alpha.22 or higher
- Python 3.11+ (for research project template)
- LaTeX (for paper templates)
- Research project template structure (src/, scripts/, latex/, results/)

## Research Focus

This module is optimized for:

- **Neural Network Interpretability** research
- **Multi-Agent Reinforcement Learning (MARL)** research
- **General ML/AI** research with emphasis on reproducibility

The module incorporates best practices from:
- TorchRL for reinforcement learning
- tdhook for interpretability
- Reproducibility standards (fixed seeds, version control, logging)
- Academic paper standards (NeurIPS, ICML, ICLR)

## Author

Created by Xmaster on 2026-01-07

## License

[Add license information if applicable]

---

## Module Details

**Module Code:** research-project
**Module Name:** Research Project Accelerator
**Category:** Domain-Specific (Academic Research - ML/AI)
**Type:** Standard Module
**Version:** 1.0.0

**Last Updated:** 2026-01-07
