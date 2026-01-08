---
name: 'step-05-experiments'
description: 'Execute baseline experiments with proper tracking (TensorBoard, W&B)'

# Path Definitions
workflow_path: '{project-root}/_bmad/research-project/workflows/baseline-development'

# File References
thisStepFile: '{workflow_path}/steps/step-05-experiments.md'
nextStepFile: '{workflow_path}/steps/step-06-analysis.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.baseline-development-state.md'

# Task References
# (No task references used in this step)

# Template References
experimentTemplate: '{project-root}/_bmad/research-project/templates/experiment-template.md'

# Data References
reproducibilityChecklist: '{project-root}/_bmad/research-project/data/reproducibility-checklist.md'

---

# Step 5: Experiment Execution

## STEP GOAL:

To run baseline experiments with proper tracking setup (TensorBoard, W&B), ensuring reproducibility and saving results and checkpoints.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator
- ✅ YOU MUST ALWAYS SPEAK OUTPUT In your Agent communication style with the config `{communication_language}`

### Role Reinforcement:

- ✅ You are a Research Baseline Development Specialist (acting as Engineer agent)
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in experimental execution and tracking
- ✅ Maintain collaborative, technical, results-focused tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on experiment execution
- 🚫 FORBIDDEN to analyze results (that's step 6)
- 💬 Use Sub-Processes for parallel experiments when appropriate
- 📋 Document experimental setup and track results

## EXECUTION PROTOCOLS:

- 🎯 Execute experiments systematically
- 💾 Save results, logs, and checkpoints
- 📖 Update sidecar file with experiment status
- 🚫 FORBIDDEN to proceed without documenting experimental setup

## CONTEXT BOUNDARIES:

- Implemented baselines from step 4 are available
- Focus ONLY on execution
- Don't analyze results yet
- Tracking setup is critical

## EXPERIMENT EXECUTION PROCESS:

### 1. Review Implementation Status

Review implemented baselines:

- Which baselines are ready for experiments?
- Experimental configurations from planning
- Resource requirements

### 2. Set Up Experiment Tracking

Configure tracking for each baseline:

- TensorBoard logging setup
- W&B project initialization
- Logging configuration
- Checkpoint saving setup

### 3. Execute Experiments

Run experiments for each baseline:

- Use Hydra configs to run scripts
- Monitor experiment progress
- Use Sub-Processes for parallel execution when appropriate
- Save checkpoints at appropriate intervals
- Track metrics in TensorBoard/W&B

### 4. Document Experimental Setup

Update `docs/baseline-development/experiments/setup-notes.md`:

- Experimental configurations used
- Hyperparameters
- Random seeds used
- Environment details
- Resource usage

### 5. Save Results

Ensure all results are saved:

- Experiment logs
- Checkpoints
- TensorBoard logs
- W&B run data
- Results files

### 6. Update Experiment Tracking

Update sidecar file and documentation:

- List of experiments run
- Status of each experiment
- Results locations
- Update TODO.md with experiment status

### 7. Present MENU OPTIONS

Display: "**Select an Option:** [C] Continue to Results Analysis"

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY proceed to next step when user selects 'C'
- User can chat or ask questions - always respond and then end with display again of the menu options

#### Menu Handling Logic:

- IF C:
  1. Update sidecar file: add 5 to `stepsCompleted` array
  2. Update sidecar file: set `currentPhase: 'experiment-execution'`
  3. Update sidecar file: set `experiments: [list of completed experiments]`
  4. Load, read entire file, then execute {nextStepFile}
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#7-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected and experiments are executed and documented, will you then update the sidecar file frontmatter and load, read entire file, then execute {nextStepFile} to begin Results Analysis.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Experiments executed for all baselines
- Tracking properly configured (TensorBoard, W&B)
- Results and checkpoints saved
- Experimental setup documented
- Reproducibility ensured
- Sidecar file updated
- Ready to proceed to analysis

### ❌ SYSTEM FAILURE:

- Not setting up tracking
- Skipping experiment execution
- Not saving results
- Not documenting setup
- Not updating sidecar file
- Proceeding without user approval

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
