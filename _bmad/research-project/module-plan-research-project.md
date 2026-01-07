---
stepsCompleted: ["step-01-init", "step-02-concept", "step-03-components", "step-04-structure", "step-05-config", "step-06-agents", "step-07-workflows", "step-08-installer", "step-09-documentation", "step-10-roadmap", "step-11-validate"]
status: complete
completionDate: 2026-01-07
moduleName: research-project
userName: Xmaster
dateCreated: 2026-01-07
inputDocuments:
  - "latex/main.tex - NeurIPS paper template with structured sections"
  - ".cursor/rules/base - Research-focused cursor rules for MARL/ML/AI"
  - "typst/checklist.typ - Reproducibility checklist and guidelines"
  - "Project structure with latex/, typst/, scripts/, src/, results/ folders"
---

# Module Plan: research-project

## Module Overview

**Purpose:** A comprehensive BMAD module for academic research workflows, covering the entire research lifecycle from literature review through paper publication.

**Target Domain:** Academic research in machine learning, AI, and related fields, with specific focus on multi-agent reinforcement learning (MARL) and model interpretability.

**Core Capabilities Identified:**
- Literature review and research discovery
- Experimental design, coding, and interpretation
- Academic paper writing and formatting
- Reproducibility and documentation standards
- Research project management and organization

## Discovered Context

This module builds upon an existing research project template that includes:
- **Paper Templates:** LaTeX (NeurIPS format) and Typst with structured sections
- **Research Guidelines:** Senior-level Python code standards, MARL best practices
- **Reproducibility Focus:** Experiment tracking, version control, checkpoint management
- **Project Structure:** Well-organized folders for code, scripts, papers, and results

## Module Concept

**Module Name:** Research Project Accelerator
**Module Code:** research-project
**Category:** Domain-Specific (Academic Research - ML/AI)
**Type:** Standard Module (3-5 agents, 5-10 workflows)

**Purpose Statement:**
Accelerate the complete research cycle from project setup and ideation through literature review, experimental implementation, and paper writing, leveraging structured templates and workflows optimized for neural network interpretability and (multi-agent) reinforcement learning research.

**Target Audience:**

- Primary: PhD students and individual researchers in ML/AI (especially interpretability and MARL)
- Secondary: Students learning research methodology in related fields

**Scope Definition:**

**In Scope:**

- Project setup and configuration workflows (replacing manual template customization)
- Research ideation and hypothesis formation guidance
- Systematic literature review processes
- Experimental design and implementation workflows
- Paper writing and structure guidance
- Template cleanup and field-specific optimization
- Integration with existing project structure (latex/, scripts/, src/, results/)

**Out of Scope:**

- Generic research outside ML/AI domains
- Typst support (focus on LaTeX only)
- Complex CLI installation tools
- Non-interpretability/MARL specific guidance

**Success Criteria:**

- Faster project setup (no manual template cleanup needed)
- Structured research workflow from idea to paper
- Leverages existing template structure effectively
- Maintains focus on interpretability and MARL research

## Component Architecture

### Agents (5 planned)

1. **Advisor** - Strategic guidance and research direction
   - Type: Primary
   - Role: Provides project guidance, research direction, broader impact assessment, and workflow orchestration

2. **Scholar** - Literature review and background research
   - Type: Specialist
   - Role: Expert in systematic literature review, paper discovery, analysis, and research synthesis

3. **Engineer** - Experimental design and implementation
   - Type: Specialist
   - Role: Handles experimental design, methodology planning, code implementation, and technical execution

4. **Writer** - Paper writing and narrative structure
   - Type: Specialist
   - Role: Dedicated to academic writing, paper structure, narrative flow, and publication formatting

5. **Reviewer** - Quality assurance and feedback
   - Type: Utility
   - Role: Provides feedback on drafts, identifies gaps, suggests improvements, and ensures research quality

### Workflows (5 planned)

1. **Project Setup** - Initialize new research projects
   - Type: Action
   - Primary user: Researchers starting new projects
   - Key output: Configured project structure
   - Agents: Advisor

2. **Ideation & Literature** - Research planning and literature review
   - Type: Interactive
   - Primary user: Researchers in early planning phase
   - Key output: Research plan and literature foundation
   - Agents: Advisor + Scholar

3. **Baseline Development** - Understanding SOTA and implementing baselines
   - Type: Interactive
   - Primary user: Researchers developing experimental foundation
   - Key output: Baseline implementations and SOTA understanding
   - Agents: Engineer + Scholar + Writer

4. **Contribution Development** - Creating novel research contributions
   - Type: Interactive
   - Primary user: Researchers developing core contributions
   - Key output: Novel methods and experimental results
   - Agents: Advisor + Engineer + Writer

5. **Review & Revision** - Review rounds and paper revisions
   - Type: Interactive
   - Primary user: Researchers in submission/revision process
   - Key output: Revised papers and rebuttal responses
   - Agents: Reviewer + Advisor + Writer + (others as needed)

### Component Integration

- **Agent Collaboration:** Workflows orchestrate multi-agent collaboration for specific research stages
- **Workflow Dependencies:** Natural progression through research stages with appropriate expertise at each step
- **Shared Expertise:** Agents can be utilized across multiple workflows based on research needs

### Research Process Mapping

- **Stage 1 (Ideation & Literature):** Advisor + Scholar
- **Stage 2 (Baseline Development):** Engineer + Scholar + Writer
- **Stage 3 (Contribution Development):** Advisor + Engineer + Writer
- **Stage 4 (Review & Revision):** Reviewer + Advisor + Writer
- **Stage 5 (Ongoing Revisions):** Advisor + Engineer + Writer + (Scholar as needed)

## Module Structure

**Module Type:** Standard Module
**Location:** /Users/xmaster/Work/yp-edu/research-project-template/_bmad-output/bmb-creations/research-project

**Directory Structure Created:**
- ✅ agents/
- ✅ workflows/
  - ✅ project-setup/
  - ✅ ideation-literature/
  - ✅ baseline-development/
  - ✅ contribution-development/
  - ✅ review-revision/
- ✅ templates/
- ✅ data/
- ✅ _module-installer/assets/
- ✅ README.md (placeholder)

**Rationale for Type:**
Standard Module classification based on 5 agents with mixed types (Primary, Specialist, Utility), 5 interactive workflows with multi-agent collaboration, and shared resources across research stages. This complexity level provides comprehensive research acceleration while maintaining manageable structure.

## Configuration Planning

### Required Configuration Fields

1. **project_name**
   - Type: STATIC
   - Purpose: Default project name for Python package naming and project identification
   - Default: "research-project-template"
   - Result: Used to configure Python package name and project metadata

2. **output_path**
   - Type: STATIC
   - Purpose: Where research outputs (experiments, results, papers) should be saved
   - Default: "results"
   - Result: "{project-root}/results" (gitignored directory)

3. **project_description**
   - Type: INTERACTIVE
   - Purpose: Determines research field scope and optimizes templates/guidance
   - Default: "General ML/AI research"
   - Input Type: text
   - Prompt: "Describe your research project focus (e.g., 'Neural network interpretability in MARL', 'Computer vision for medical imaging'). This helps customize templates and guidance."

4. **author_name**
   - Type: INTERACTIVE
   - Purpose: Author name for paper templates and project metadata
   - Default: (empty, required)
   - Input Type: text
   - Prompt: "What is your name? (Used in paper templates and project metadata)"

5. **author_lab**
   - Type: INTERACTIVE
   - Purpose: Lab/institution affiliation for paper templates
   - Default: (empty, optional)
   - Input Type: text
   - Prompt: "What lab or institution are you affiliated with? (Optional, used in paper templates)"

6. **author_email**
   - Type: INTERACTIVE
   - Purpose: Contact email for project metadata
   - Default: (empty, required)
   - Input Type: text
   - Prompt: "What is your email address? (Used in project metadata and paper templates)"

### Installation Questions Flow

1. Author name prompt
2. Author lab prompt (optional)
3. Author email prompt
4. Project description prompt (to determine field scope)

### Result Configuration Structure

The module.yaml will generate:
- Module configuration at: `_bmad/research-project/config.yaml`
- User settings stored as:
  - `project_name`: "research-project-template" (static)
  - `output_path`: "results" (static)
  - `author_name`: [user-provided] (interactive, required)
  - `author_lab`: [user-provided] (interactive, optional)
  - `author_email`: [user-provided] (interactive, required)
  - `project_description`: [user-provided text] (interactive)
  - `field_scope`: [derived from project_description] (auto-determined)

**Project Setup Workflow Integration:**
These author settings will automatically replace `<NAME>`, `<LAB>`, and `<EMAIL>` placeholders throughout the project template (README.md, LaTeX templates, Python package metadata, etc.) during the Project Setup workflow.

## Agents Created

1. **Advisor** - Research Strategy & Direction Advisor
   - File: advisor.yaml
   - Features: Memory/Sidecar, Embedded prompts, Workflows
   - Structure:
     - Sidecar: Yes (memories.md, instructions.md, insights.md, patterns.md, sessions/)
     - Prompts: 2 embedded (strategic-guidance, research-direction)
     - Workflows: project-setup, ideation-literature
   - Status: Created with memory, embedded prompts, and workflow routes
   - Guidelines incorporated: Reproducibility practices, project structure, interpretability focus

2. **Scholar** - Literature Review & Research Scholar
   - File: scholar.yaml
   - Features: Memory/Sidecar, Embedded prompts, Workflows
   - Structure:
     - Sidecar: Yes (memories.md, instructions.md, insights.md, patterns.md, papers.md, sessions/)
     - Prompts: 2 embedded (literature-review, paper-analysis)
     - Workflows: ideation-literature, baseline-development
   - Status: Created with memory, embedded prompts, and workflow routes

3. **Engineer** - Experimental Design & Implementation Engineer
   - File: engineer.yaml
   - Features: Memory/Sidecar, Embedded prompts, Workflows
   - Structure:
     - Sidecar: Yes (memories.md, instructions.md, insights.md, patterns.md, implementations.md, sessions/)
     - Prompts: 2 embedded (experimental-design, code-review)
     - Workflows: baseline-development, contribution-development
   - Status: Created with memory, embedded prompts, and workflow routes
   - Guidelines incorporated: PEP 8, docstrings, reproducibility (seeds, version control, logging), BenchMARL, interpretability tools (Captum, SHAP), project structure

4. **Writer** - Academic Paper Writer & Narrative Specialist
   - File: writer.yaml
   - Features: Memory/Sidecar, Embedded prompts, Workflows
   - Structure:
     - Sidecar: Yes (memories.md, instructions.md, insights.md, patterns.md, drafts.md, sessions/)
     - Prompts: 2 embedded (paper-structure, writing-guidance)
     - Workflows: baseline-development, contribution-development, review-revision
   - Status: Created with memory, embedded prompts, and workflow routes
   - Guidelines incorporated: Paper structure, writing style, reproducibility sections, submission readiness, conference standards

5. **Reviewer** - Quality Assurance & Research Reviewer
   - File: reviewer.yaml
   - Features: Memory/Sidecar, Embedded prompts, Workflows
   - Structure:
     - Sidecar: Yes (memories.md, instructions.md, insights.md, patterns.md, feedback.md, sessions/)
     - Prompts: 2 embedded (paper-review, gap-analysis)
     - Workflows: review-revision
   - Status: Created with memory, embedded prompts, and workflow routes
   - Guidelines incorporated: Quality standards, reproducibility checks, submission readiness validation

## Workflow Plans Reviewed

### For Agent Advisor:

1. **Project Setup**
   - Location: workflows/project-setup/
   - Status: Plan reviewed and ready for implementation
   - Trigger: PS
   - Agents: Advisor
   - Implementation: Use create-workflow workflow

2. **Ideation & Literature**
   - Location: workflows/ideation-literature/
   - Status: Plan reviewed and ready for implementation
   - Trigger: IL
   - Agents: Advisor + Scholar
   - Implementation: Use create-workflow workflow

### For Agent Scholar:

1. **Ideation & Literature**
   - Location: workflows/ideation-literature/
   - Status: Plan reviewed and ready for implementation
   - Trigger: IL
   - Agents: Advisor + Scholar
   - Implementation: Use create-workflow workflow

2. **Baseline Development**
   - Location: workflows/baseline-development/
   - Status: Plan reviewed and ready for implementation
   - Trigger: BD
   - Agents: Engineer + Scholar + Writer
   - Implementation: Use create-workflow workflow

### For Agent Engineer:

1. **Baseline Development**
   - Location: workflows/baseline-development/
   - Status: Plan reviewed and ready for implementation
   - Trigger: BD
   - Agents: Engineer + Scholar + Writer
   - Implementation: Use create-workflow workflow

2. **Contribution Development**
   - Location: workflows/contribution-development/
   - Status: Plan reviewed and ready for implementation
   - Trigger: CD
   - Agents: Advisor + Engineer + Writer
   - Implementation: Use create-workflow workflow

### For Agent Writer:

1. **Baseline Development**
   - Location: workflows/baseline-development/
   - Status: Plan reviewed and ready for implementation
   - Trigger: BD
   - Agents: Engineer + Scholar + Writer
   - Implementation: Use create-workflow workflow

2. **Contribution Development**
   - Location: workflows/contribution-development/
   - Status: Plan reviewed and ready for implementation
   - Trigger: CD
   - Agents: Advisor + Engineer + Writer
   - Implementation: Use create-workflow workflow

3. **Review & Revision**
   - Location: workflows/review-revision/
   - Status: Plan reviewed and ready for implementation
   - Trigger: RR
   - Agents: Reviewer + Advisor + Writer + (others as needed)
   - Implementation: Use create-workflow workflow

### For Agent Reviewer:

1. **Review & Revision**
   - Location: workflows/review-revision/
   - Status: Plan reviewed and ready for implementation
   - Trigger: RR
   - Agents: Reviewer + Advisor + Writer + (others as needed)
   - Implementation: Use create-workflow workflow

## Workflow-Agent Mapping Verification

All workflows are properly linked to their agents:

- **Project Setup** → Advisor (PS trigger)
- **Ideation & Literature** → Advisor + Scholar (IL trigger)
- **Baseline Development** → Engineer + Scholar + Writer (BD trigger)
- **Contribution Development** → Advisor + Engineer + Writer (CD trigger)
- **Review & Revision** → Reviewer + Advisor + Writer (RR trigger)

All trigger codes match the agent menu items defined in agent YAML files.

## Installer Configuration

### Install Configuration

- File: module.yaml
- Module code: research-project
- Module name: Research Project Accelerator
- Default selected: false
- Configuration fields: 6 (2 static, 4 interactive)

### Configuration Fields

**Static Fields:**
- project_name: "research-project-template"
- output_path: "{project-root}/results"

**Interactive Fields:**
- author_name (required): User's name for paper templates
- author_lab (optional): Lab/institution affiliation
- author_email (required): Contact email
- project_description (required): Research focus description

### Custom Logic

- installer.js: Created
- Custom setup:
  - Replaces `<NAME>`, `<LAB>`, `<EMAIL>` placeholders in README.md, latex/main.tex, pyproject.toml
  - Creates results/ directory if it doesn't exist
  - Adds results/ to .gitignore if not present
  - Provides installation completion message

### Installation Process

1. User runs: `bmad install research-project`
2. Installer asks:
   - Author name (required)
   - Author lab (optional)
   - Author email (required)
   - Project description (required)
3. Creates: `_bmad/research-project/`
4. Generates: `config.yaml` with user settings
5. Runs custom installer.js to:
   - Replace placeholders in project files
   - Set up results directory
   - Update .gitignore

### Validation

- ✅ YAML syntax valid
- ✅ All fields defined
- ✅ Paths use proper templates ({project-root}, {value})
- ✅ Custom logic ready (installer.js created)
- ✅ Installer handles placeholder replacement

## Documentation

### README.md Created

- Location: /Users/xmaster/Work/yp-edu/research-project-template/_bmad-output/bmb-creations/research-project/README.md
- Sections: Overview, Installation, Components (Agents, Workflows, Tasks), Quick Start, Module Structure, Configuration, Examples, Development Status, Contributing, Requirements, Research Focus, Author, License, Module Details
- Status: Complete

### Content Highlights

- Clear installation instructions with configuration details
- Comprehensive component overview (5 agents, 5 workflows)
- Quick start guide with example commands
- Configuration details with all settings explained
- Three usage examples covering main use cases
- Honest development status (agents created, workflows planned)
- Research focus and best practices highlighted

### Updates Made

- Included all 5 agents with descriptions and icons
- Documented all 5 workflows with purposes
- Added research focus section highlighting interpretability and MARL optimization
- Included requirements and dependencies
- Added module details section with metadata

## Development Roadmap

### TODO.md Created

- Location: /Users/xmaster/Work/yp-edu/research-project-template/_bmad-output/bmb-creations/research-project/TODO.md
- Phases defined: 3 (Core Components, Enhanced Features, Polish and Launch)
- Immediate tasks prioritized

### Next Steps Priority Order

1. **Implement Project Setup Workflow** - Enables users to start using the module immediately
2. **Implement Ideation & Literature Workflow** - Core research planning functionality
3. **Test Agent-Workflow Integration** - Ensure all menu routes work correctly
4. **Implement Baseline Development Workflow** - Establish experimental foundation
5. **Implement Contribution Development Workflow** - Core research development

### Quick Reference Commands

- `workflow create-workflow` - Create new workflows (use with workflows/[name]/README.md)
- `bmad install research-project` - Test installation
- `agent [name]` - Run specific agent (advisor, scholar, engineer, writer, reviewer)

### Development Notes

- **Multi-Agent Workflows**: Several workflows require multiple agents working together. Ensure proper orchestration.
- **Iterative Development**: Contribution Development workflow should support iterative experiment-paper co-development.
- **Reproducibility**: All workflows must maintain reproducibility standards as defined in Engineer agent principles.
- **Template Integration**: Project Setup workflow must integrate with existing project template structure.

### Current Status Summary

- ✅ Module structure created
- ✅ Installer configured with custom logic
- ✅ All 5 agents created with sidecar structures
- ✅ All 5 workflow plans documented
- ✅ Documentation complete
- ❌ Workflows need implementation (plans ready)
- ❌ Integration testing pending

## Validation Results

### Date Validated

2026-01-07

### Validation Checklist

- [x] Structure: Complete - All required directories and files present
- [x] Configuration: Valid - module.yaml syntax correct, all fields defined
- [x] Components: Ready - All 5 agents created, all 5 workflow plans documented
- [x] Documentation: Complete - README.md and TODO.md comprehensive
- [x] Integration: Verified - Agent-workflow references correct, no circular dependencies

### Issues Found and Resolved

No critical issues found. All validation checks passed.

**Warnings (Expected):**
- Workflows are planned but not yet implemented (ready for implementation using create-workflow)
- Tasks folder is empty (as planned - no tasks needed for this module)

### Final Status

✅ **Ready for testing and workflow implementation**

The module structure is complete and properly configured. All agents are created and ready to use. Workflow plans are documented and ready for implementation using the create-workflow workflow.

### Next Steps

1. **Test the Installation:**
   ```bash
   cd [test-project]
   bmad install research-project
   ```

2. **Implement Workflows:**
   - Follow TODO.md for prioritized tasks
   - Use `workflow create-workflow` for each workflow
   - Reference workflow README.md files as blueprints

3. **Test Functionality:**
   - Load agents: `agent advisor`, `agent scholar`, etc.
   - Test agent prompts and menu items
   - Verify workflow routes work correctly

4. **Iterate and Improve:**
   - Gather feedback from usage
   - Refine agent personas if needed
   - Add missing features based on real use cases

5. **Share Your Module:**
   - Document improvements in README.md
   - Consider submitting to BMAD registry
   - Share with the research community
