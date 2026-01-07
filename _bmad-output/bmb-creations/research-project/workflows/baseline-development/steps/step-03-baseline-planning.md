---
name: 'step-03-baseline-planning'
description: 'Collaboratively select baselines to implement and plan experimental configuration'

# Path Definitions
workflow_path: '{project-root}/_bmad/research-project/workflows/baseline-development'

# File References
thisStepFile: '{workflow_path}/steps/step-03-baseline-planning.md'
nextStepFile: '{workflow_path}/steps/step-04-implementation.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.baseline-development-state.md'

# Task References
partyModeWorkflow: '{project-root}/_bmad/core/workflows/party-mode/workflow.md'
advancedElicitationTask: '{project-root}/_bmad/core/workflows/advanced-elicitation/workflow.xml'

---

# Step 3: Baseline Selection & Planning

## STEP GOAL:

To collaboratively decide which baseline methods to implement, plan experimental configurations, and set up per-baseline documentation structure.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator
- ✅ YOU MUST ALWAYS SPEAK OUTPUT In your Agent communication style with the config `{communication_language}`

### Role Reinforcement:

- ✅ You are a Research Baseline Development Specialist (coordinating Engineer + Scholar perspectives)
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in experimental design and implementation planning
- ✅ Maintain collaborative, planning-focused tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on planning and selection decisions
- 🚫 FORBIDDEN to start implementing code
- 💬 Use Party-Mode for collaborative brainstorming if needed
- 📋 Create per-baseline folder structure in docs

## EXECUTION PROTOCOLS:

- 🎯 Guide collaborative decision-making
- 💾 Document baseline selections and plans
- 📖 Update sidecar file with selected baselines
- 🚫 FORBIDDEN to proceed without baseline selection

## CONTEXT BOUNDARIES:

- Literature review findings from step 2 are available
- Focus ONLY on planning and selection
- Don't implement code yet
- Experimental design discussions are appropriate

## BASELINE PLANNING PROCESS:

### 1. Review SOTA Findings

Present summary of literature review findings:

- List of identified baseline methods
- Key characteristics of each method
- Implementation complexity estimates
- Reported performance metrics

### 2. Collaborative Baseline Selection

Engage with user to select baselines:

- Which baselines are most relevant for the research?
- What is the priority order?
- Are there any baselines to skip or defer?
- Any additional baselines not found in literature?

### 3. Experimental Configuration Planning

For each selected baseline:

- Target datasets or environments
- Evaluation metrics to use
- Experimental setup requirements
- Resource constraints or considerations
- Hydra configuration needs

### 4. Create Per-Baseline Documentation Structure

For each selected baseline:

- Create `docs/baseline-development/{baseline-name}/` folder
- Create `README.md` in each baseline folder
- Create `TODO.md` for tracking baseline-specific tasks
- Initialize with baseline information

### 5. Update Main TODO

Update `docs/baseline-development/TODO.md` with:

- Selected baselines and priorities
- Experimental configuration decisions
- Next steps for implementation

### 6. Document Planning Decisions

Create `docs/baseline-development/planning.md`:

- Selected baselines with rationale
- Experimental configuration plan
- Implementation priorities
- Resource requirements

### 7. Present MENU OPTIONS

Display: "**Select an Option:** [A] Advanced Elicitation [P] Party Mode [C] Continue to Implementation"

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY proceed to next step when user selects 'C'
- After other menu items execution, return to this menu
- User can chat or ask questions - always respond and then end with display again of the menu options

#### Menu Handling Logic:

- IF A: Execute {advancedElicitationTask} to critically review baseline selection and planning
- IF P: Execute {partyModeWorkflow} for collaborative brainstorming on experimental design
- IF C:
  1. Update sidecar file: add 3 to `stepsCompleted` array
  2. Update sidecar file: set `baselines: [list of selected baselines]`
  3. Update sidecar file: set `currentPhase: 'baseline-planning'`
  4. Load, read entire file, then execute {nextStepFile}
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#7-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected and baseline planning is complete, will you then update the sidecar file frontmatter and load, read entire file, then execute {nextStepFile} to begin Baseline Implementation.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Baselines selected collaboratively
- Experimental configuration planned
- Per-baseline documentation structure created
- Planning decisions documented
- Sidecar file updated with selections
- Ready to proceed to implementation

### ❌ SYSTEM FAILURE:

- Proceeding without baseline selection
- Not creating documentation structure
- Skipping experimental planning
- Not updating sidecar file
- Not documenting decisions

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
