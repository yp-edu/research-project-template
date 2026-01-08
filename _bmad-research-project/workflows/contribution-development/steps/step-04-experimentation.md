---
name: 'step-04-experimentation'
description: 'Design and run experiments to validate contributions with proper controls, ablation studies, and tracking'

# Path Definitions
workflow_path: '{project-root}/_bmad/research-project/workflows/contribution-development'

# File References
thisStepFile: '{workflow_path}/steps/step-04-experimentation.md'
nextStepFile: '{workflow_path}/steps/step-05-analysis.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.contribution-development-state.md'

# Task References

# Template References
experimentTemplate: '{project-root}/_bmad/research-project/templates/experiment-template.md'

# Data References
reproducibilityChecklist: '{project-root}/_bmad/research-project/data/reproducibility-checklist.md'

---

# Step 4: Experimentation

## STEP GOAL:

To design and run experiments to validate contributions with proper controls, ablation studies, and systematic tracking (TensorBoard, W&B, JSON/CSV), ensuring reproducibility.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator
- ✅ YOU MUST ALWAYS SPEAK OUTPUT In your Agent communication style with the config `{communication_language}`

### Role Reinforcement:

- ✅ You are a Research Contribution Development Specialist (acting as Engineer agent)
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in experimental design, execution, and tracking
- ✅ Maintain collaborative, technical, results-focused tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on experiment design and execution
- 🚫 FORBIDDEN to analyze results (that's step 5)
- 💬 Use Sub-Processes for parallel experiments when appropriate
- 📋 Document experimental design and track results systematically

## EXECUTION PROTOCOLS:

- 🎯 Execute experiments systematically
- 💾 Save results, logs, and checkpoints
- 📖 Update sidecar file with experiment status
- 🚫 FORBIDDEN to proceed without documenting experimental setup

## CONTEXT BOUNDARIES:

- Implemented contributions from step 3 are available
- Focus ONLY on execution
- Don't analyze results yet
- Tracking setup and ablation studies are critical

## EXPERIMENTATION PROCESS:

### 1. Review Implementation Status

Review implemented contributions:

- Which contributions are ready for experiments?
- Experimental validation plans from design step
- Resource requirements

### 2. Design Experiments

For each contribution:

- Design experiments to validate the contribution
- Plan proper controls (baseline comparisons)
- Design ablation studies to isolate contribution components
- Identify key metrics to measure
- Plan experimental configurations

### 3. Set Up Experiment Tracking

Configure tracking for each contribution:

- TensorBoard logging setup
- W&B project initialization
- JSON/CSV result storage in `results/contribution-development/`
- Logging configuration
- Checkpoint saving setup

### 4. Execute Experiments

Run experiments for each contribution:

- Use Hydra configs to run scripts
- Run baseline comparisons
- Execute ablation studies
- Monitor experiment progress
- Use Sub-Processes for parallel execution when appropriate
- Save checkpoints at appropriate intervals
- Track metrics in TensorBoard/W&B

### 5. Document Experimental Setup

Update `docs/contribution-development/experiments/setup-notes.md`:

- Experimental configurations used
- Hyperparameters
- Random seeds used
- Environment details
- Resource usage
- Ablation study designs

### 6. Save Results

Ensure all results are saved:

- Experiment logs
- Checkpoints
- TensorBoard logs
- W&B run data
- Results files (JSON/CSV) in `results/contribution-development/`

### 7. Update Experiment Tracking

Update sidecar file and documentation:

- List of experiments run
- Status of each experiment
- Results locations
- Update TODO.md with experiment status

### 8. Present MENU OPTIONS

Display: "**Select an Option:** [C] Continue to Results Analysis"

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY proceed to next step when user selects 'C'
- User can chat or ask questions - always respond and then end with display again of the menu options

#### Menu Handling Logic:

- IF C:
  1. Update sidecar file: add 4 to `stepsCompleted` array
  2. Update sidecar file: set `currentPhase: 'experimentation'`
  3. Update sidecar file: set `experiments: [list of completed experiments]`
  4. Load, read entire file, then execute {nextStepFile}
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#8-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected and experiments are executed and documented, will you then update the sidecar file frontmatter and load, read entire file, then execute {nextStepFile} to begin Results Analysis.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Experiments designed with proper controls
- Ablation studies executed
- Experiments executed for all contributions
- Tracking properly configured (TensorBoard, W&B, JSON/CSV)
- Results and checkpoints saved
- Experimental setup documented
- Reproducibility ensured
- Sidecar file updated
- Ready to proceed to analysis

### ❌ SYSTEM FAILURE:

- Not designing proper controls
- Skipping ablation studies
- Not setting up tracking
- Skipping experiment execution
- Not saving results
- Not documenting setup
- Not updating sidecar file
- Proceeding without user approval

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
