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

```bash
bmad install research-project
```

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

### Agents (5)

1. **Advisor** 🎯 - Research Strategy & Direction Advisor
   - Provides strategic guidance and research direction
   - Connects experiments to broader research goals
   - Orchestrates workflows and ensures project coherence

2. **Scholar** 📚 - Literature Review & Research Scholar
   - Expert in systematic literature review
   - Paper discovery, analysis, and synthesis
   - Related work organization and positioning

3. **Engineer** 🔧 - Experimental Design & Implementation Engineer
   - Senior-level Python code with PEP 8 standards
   - Reproducible experimentation (fixed seeds, logging, checkpoints)
   - BenchMARL framework for MARL research
   - Interpretability tools integration (Captum, SHAP)

4. **Writer** ✍️ - Academic Paper Writer & Narrative Specialist
   - Paper structure and narrative flow
   - Academic writing standards (NeurIPS, ICML, ICLR)
   - Reproducibility sections and submission readiness

5. **Reviewer** 🔍 - Quality Assurance & Research Reviewer
   - Comprehensive paper review and gap analysis
   - Reproducibility validation
   - Quality assurance and improvement suggestions

### Workflows (5)

1. **Project Setup** - Initialize new research projects
   - Configure project template
   - Replace author placeholders
   - Set up project structure
   - Prepare environment for research

2. **Ideation & Literature** - Research planning and literature review
   - Research ideation and hypothesis formation
   - Systematic literature discovery
   - Paper analysis and synthesis
   - Research planning and positioning

3. **Baseline Development** - Understanding SOTA and implementing baselines
   - SOTA method understanding
   - Baseline implementation with best practices
   - Experiment execution and tracking
   - Initial paper sections (methods, results)

4. **Contribution Development** - Creating novel research contributions
   - Novel method design
   - Experimental validation
   - Results analysis and interpretation
   - Paper writing (methods, results, discussion)
   - Iterative experiment-paper co-development

5. **Review & Revision** - Review rounds and paper revisions
   - Comprehensive paper review
   - Gap analysis and issue identification
   - Revision planning and implementation
   - Rebuttal writing
   - Final quality assurance

### Tasks (0)

No standalone tasks - all functionality is provided through agents and workflows.

## Quick Start

1. **Install the module:**
   ```bash
   bmad install research-project
   ```

2. **Start with Project Setup:**
   ```
   agent research-advisor
   *PS  (Project Setup workflow)
   ```

3. **Begin Research Planning:**
   ```
   agent research-advisor
   *IL  (Ideation & Literature workflow)
   ```

4. **Or chat with an agent directly:**
   ```
   agent research-advisor
   *CH  (Chat with Advisor)
   ```

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

## Examples

### Example 1: Starting a New Research Project

1. **Install the module:**
   ```bash
   bmad install research-project
   ```

2. **Run Project Setup:**
   ```
   agent research-advisor
   *PS
   ```
   This will configure your project template and replace placeholders.

3. **Begin Research Planning:**
   ```
   agent research-advisor
   *IL
   ```
   Work with Advisor and Scholar to plan your research and review literature.

### Example 2: Developing Experiments

1. **Design experiments:**
   ```
   agent research-engineer
   *ED  (Experimental Design)
   ```

2. **Implement with best practices:**
   ```
   agent research-engineer
   *BD  (Baseline Development workflow)
   ```
   Engineer will help implement baselines following reproducibility standards.

3. **Develop contributions:**
   ```
   agent research-engineer
   *CD  (Contribution Development workflow)
   ```
   Create novel methods with Advisor, Engineer, and Writer collaboration.

### Example 3: Writing and Reviewing Papers

1. **Get writing guidance:**
   ```
   agent research-writer
   *PS  (Paper Structure)
   ```

2. **Review paper quality:**
   ```
   agent research-reviewer
   *PR  (Paper Review)
   ```

3. **Handle revisions:**
   ```
   agent research-reviewer
   *RR  (Review & Revision workflow)
   ```

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
- BenchMARL framework for MARL
- Interpretability tools (Captum, SHAP)
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
