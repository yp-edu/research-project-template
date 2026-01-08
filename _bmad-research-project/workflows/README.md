# Research Project Workflows

This directory contains five comprehensive workflows that guide you through the complete research lifecycle, from project initialization to paper revision.

## Workflow Overview

The workflows are designed to work together, supporting the complete research cycle:

```
Project Setup → Ideation & Literature → Baseline Development → Contribution Development → Review & Revision
```

Each workflow is self-contained but builds on outputs from previous workflows, creating a cohesive research pipeline.

## Available Workflows

### 1. Project Setup (`PS`)

**Purpose:** Initialize and configure new research projects

**Agents:** Advisor

**Key Features:**
- Replace author placeholders (`<NAME>`, `<LAB>`, `<EMAIL>`) in project files
- Configure project structure (src/, scripts/, latex/, results/)
- Set up experiment tracking directories
- Validate project configuration

**When to Use:**
- Starting a new research project
- Customizing an existing project template
- Reconfiguring project settings

**Output:**
- Fully configured project with all placeholders replaced
- Proper directory structure
- Ready for research work

**See:** [project-setup/](./project-setup/) for detailed documentation

---

### 2. Ideation & Literature (`IL`)

**Purpose:** Research planning, hypothesis formation, and systematic literature review

**Agents:** Advisor + Scholar

**Key Features:**
- Research ideation and hypothesis formation
- Systematic literature discovery and analysis
- Research planning and positioning
- Literature synthesis and gap identification

**When to Use:**
- Beginning a new research direction
- Exploring research questions
- Conducting literature reviews
- Planning research approach

**Output:**
- Research plan with clear questions and hypotheses
- Literature review document with key papers
- Related work outline
- Research direction documented

**See:** [ideation-literature/](./ideation-literature/) for detailed documentation

---

### 3. Baseline Development (`BD`)

**Purpose:** Understand SOTA methods and implement baseline experiments

**Agents:** Engineer + Scholar + Writer

**Key Features:**
- SOTA method understanding and analysis
- Baseline implementation with best practices
- Experiment execution and tracking
- Initial paper sections (methods, results)

**When to Use:**
- After literature review is complete
- Before developing novel contributions
- Establishing experimental foundation
- Understanding baseline performance

**Output:**
- Implemented baseline methods (reproducible code)
- Experimental results and analysis
- Initial paper sections
- Understanding of SOTA landscape

**See:** [baseline-development/](./baseline-development/) for detailed documentation

---

### 4. Contribution Development (`CD`)

**Purpose:** Design and develop novel research contributions

**Agents:** Advisor + Engineer + Writer

**Key Features:**
- Novel contribution design
- Experimental validation
- Results analysis and interpretation
- Paper writing (methods, results, discussion)
- Iterative experiment-paper co-development

**When to Use:**
- After baselines are established
- Developing novel methods or approaches
- Validating research contributions
- Writing contribution-focused paper sections

**Output:**
- Novel method implementation
- Experimental validation results
- Analysis and interpretation
- Paper sections highlighting contributions

**See:** [contribution-development/](./contribution-development/) for detailed documentation

---

### 5. Review & Revision (`RR`)

**Purpose:** Comprehensive paper review, gap analysis, and revision

**Agents:** Reviewer + Advisor + Writer

**Key Features:**
- Comprehensive paper review
- Gap analysis and issue identification
- Revision planning and implementation
- Rebuttal writing
- Final quality assurance

**When to Use:**
- After paper draft is complete
- Preparing for submission
- Addressing reviewer feedback
- Final paper polish

**Output:**
- Structured review document
- Gap analysis and revision plan
- Revised paper sections
- Rebuttal document (if needed)

**See:** [review-revision/](./review-revision/) for detailed documentation

---

## Workflow Integration

### Typical Research Flow

1. **Start Here:** Run `PS` (Project Setup) to configure your project
2. **Plan Research:** Run `IL` (Ideation & Literature) to plan and review literature
3. **Establish Baselines:** Run `BD` (Baseline Development) to understand SOTA
4. **Develop Contributions:** Run `CD` (Contribution Development) to create novel work
5. **Review & Revise:** Run `RR` (Review & Revision) to polish and improve

### Workflow Dependencies

```
Project Setup (PS)
    ↓
Ideation & Literature (IL)
    ↓
Baseline Development (BD)
    ↓
Contribution Development (CD)
    ↓
Review & Revision (RR)
```

**Note:** While workflows build on each other, you can enter at any stage if you already have the prerequisite work completed.

## Using Workflows

### Via Agents

Each workflow can be triggered through the appropriate agent's menu:

```bash
# Activate an agent
agent research-advisor

# Then select workflow from menu:
# PS - Project Setup
# IL - Ideation & Literature
# BD - Baseline Development (via Engineer)
# CD - Contribution Development (via Engineer)
# RR - Review & Revision (via Reviewer)
```

### Workflow Features

- **Multi-Agent Collaboration:** Workflows coordinate multiple agents working together
- **State Management:** Each workflow maintains state across sessions
- **Template Integration:** Workflows reference templates and data files from the module
- **Reproducibility:** All workflows emphasize reproducible research practices

## Templates and Data

Workflows reference templates and data files from the module:

**Templates:**
- `paper-review-template.md` - For structured paper reviews
- `experiment-template.md` - For documenting experiments
- `literature-review-template.md` - For systematic literature reviews
- `paper-outline-template.md` - For structuring papers

**Data:**
- `conference-requirements.md` - Conference submission requirements
- `reproducibility-checklist.md` - Reproducibility best practices
- `tools-reference.md` - Tools reference (TorchRL, tdhook)

These are located at: `{project-root}/_bmad/research-project/templates/` and `{project-root}/_bmad/research-project/data/`

## Best Practices

1. **Start with Project Setup:** Always run Project Setup first to configure your environment
2. **Follow the Sequence:** Workflows are designed to build on each other
3. **Save State:** Workflows maintain state - you can continue later
4. **Use Templates:** Reference templates for consistent documentation
5. **Maintain Reproducibility:** Follow reproducibility practices throughout

## Getting Help

- Each workflow has its own detailed README in its folder
- Workflow step files contain detailed execution instructions
- Agents provide guidance and context within workflows

---

*For module-level documentation, see [../README.md](../README.md)*
