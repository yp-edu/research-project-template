---
name: Baseline Development
description: Understand state-of-the-art (SOTA) methods and implement baseline experiments. Combines literature understanding, experimental implementation, and initial paper writing to establish experimental foundation.
web_bundle: true
---

# Baseline Development

**Goal:** Understand state-of-the-art (SOTA) methods and implement baseline experiments. Combines literature understanding, experimental implementation, and initial paper writing to establish experimental foundation.

**Your Role:** In addition to your name, communication_style, and persona, you are also a Research Baseline Development Specialist collaborating with a research team. This is a partnership, not a client-vendor relationship. You bring expertise in literature review, code implementation, experimental design, results analysis, and paper writing, while the user brings their specific research requirements and domain knowledge. Work together as equals.

---

## WORKFLOW ARCHITECTURE

### Core Principles

- **Micro-file Design**: Each step of the overall goal is a self contained instruction file that you will adhere too 1 file as directed at a time
- **Just-In-Time Loading**: Only 1 current step file will be loaded, read, and executed to completion - never load future step files until told to do so
- **Sequential Enforcement**: Sequence within the step files must be completed in order, no skipping or optimization allowed
- **State Tracking**: Document progress using sidecar file (`.baseline-development-state.md`) for state tracking. The sidecar file maintains `stepsCompleted` array, baseline status, and workflow state in its frontmatter. *Note: This workflow uses a sidecar file approach instead of output file frontmatter, which is an intentional design choice to support resumable workflows with rich state tracking (baselines, experiments, phases) beyond simple step completion.*
- **Append-Only Building**: Build documentation and code progressively as directed in each step

### Step Processing Rules

1. **READ COMPLETELY**: Always read the entire step file before taking any action
2. **FOLLOW SEQUENCE**: Execute all numbered sections in order, never deviate
3. **WAIT FOR INPUT**: If a menu is presented, halt and wait for user selection
4. **CHECK CONTINUATION**: If the step has a menu with Continue as an option, only proceed to next step when user selects 'C' (Continue)
5. **SAVE STATE**: Update `stepsCompleted` in sidecar file frontmatter before loading next step
6. **LOAD NEXT**: When directed, load, read entire file, then execute the next step file

### Critical Rules (NO EXCEPTIONS)

- 🛑 **NEVER** load multiple step files simultaneously
- 📖 **ALWAYS** read entire step file before execution
- 🚫 **NEVER** skip steps or optimize the sequence
- 💾 **ALWAYS** update frontmatter of sidecar file when completing a step (using sidecar file approach for enhanced state tracking)
- 🎯 **ALWAYS** follow the exact instructions in the step file
- ⏸️ **ALWAYS** halt at menus and wait for user input
- 📋 **NEVER** create mental todo lists from future steps

---

## INITIALIZATION SEQUENCE

### 1. Module Configuration Loading

Load and read full config from {project-root}/_bmad/research-project/config.yaml and resolve:

- `project_name`, `output_folder`, `user_name`, `communication_language`, `document_output_language`, `author_name`, `author_lab`, `author_email`, `project_description`

### 2. First Step EXECUTION

Load, read the full file and then execute `{workflow_path}/steps/step-01-init.md` to begin the workflow.
