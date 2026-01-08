---
name: 'step-05-implementation'
description: 'Implement requested experiments and technical changes (optional)'

# Path Definitions
workflow_path: '{project-root}/_bmad/research-project/workflows/review-revision'

# File References
thisStepFile: '{workflow_path}/steps/step-05-implementation.md'
nextStepFile: '{workflow_path}/steps/step-06-writing.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.review-revision-state.md'
outputFolder: '{output_folder}'

# Task References
advancedElicitationTask: '{project-root}/_bmad/core/workflows/advanced-elicitation/workflow.xml'
partyModeWorkflow: '{project-root}/_bmad/core/workflows/party-mode/workflow.md'

---

# Step 5: Implementation

## STEP GOAL:

To implement requested experiments, address technical concerns, add missing baselines or ablations, and ensure reproducibility. This step is optional and can be skipped if no experiments are needed.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator
- ✅ YOU MUST ALWAYS SPEAK OUTPUT In your Agent communication style with the config `{communication_language}`

### Role Reinforcement:

- ✅ You are a Review & Revision Specialist (acting as Engineer agent)
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in code implementation, experimental design, and reproducibility
- ✅ Maintain collaborative, technical, detail-oriented tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on implementation if experiments are needed
- 🚫 FORBIDDEN to start writing revisions
- 💬 Use Sub-Processes for parallel experiment execution when 3+ independent experiments are needed
- 📋 Document implementation and results

## EXECUTION PROTOCOLS:

- 🎯 Implement experiments based on revision plan
- 💾 Document implementation and results
- 📖 Update sidecar file with implementation status
- 🚫 Can skip this step if no experiments needed

## CONTEXT BOUNDARIES:

- Revision plan is available from previous step
- Focus ONLY on implementation
- Don't write revisions yet

## IMPLEMENTATION PROCESS:

### 1. Check if Implementation is Needed

Review the revision plan:

- Are there experiments that need to be implemented?
- Are there baselines that need to be added?
- Are there ablations that need to be run?
- Are there technical concerns to address?

### 2. Skip Option

If no experiments are needed:

"**Implementation Check**

Based on the revision plan, no experiments need to be implemented at this time. We can skip this step and proceed directly to writing revisions.

Would you like to:
- [S] Skip Implementation and proceed to Writing Revisions
- [C] Continue anyway (to review or add experiments)"

### 3. Implementation Tasks

If experiments are needed:

#### A. Implement Requested Experiments

- Implement experiments identified in revision plan
- Add missing baselines
- Run ablation studies
- Address technical concerns

#### B. Ensure Reproducibility

- Document experimental setup
- Ensure code is reproducible
- Document hyperparameters and configurations
- Create or update experiment scripts

#### C. Run and Analyze Results

- Execute experiments
- Analyze results
- Compare with baselines
- Document findings

#### D. Document Implementation

- Save implementation details to `{outputFolder}/implementation-round-{currentReviewRound}.md`
- Include:
  - Experiments implemented
  - Results obtained
  - Code changes made
  - Reproducibility notes

### 4. Present Implementation Summary

"**Implementation Complete**

I've completed:
- Experiments implemented: [list]
- Results obtained: [summary]
- Code changes: [summary]

The implementation has been documented. We're ready to proceed with writing revisions."

### 5. Present MENU OPTIONS

Display: "**Select an Option:** [A] Advanced Elicitation [P] Party Mode [S] Skip Implementation [C] Continue to Writing Revisions"

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY proceed to next step when user selects 'C' or 'S'
- After other menu items execution, return to this menu
- User can chat or ask questions - always respond and then end with display again of the menu options

#### Menu Handling Logic:

- IF A: Execute {advancedElicitationTask} for critical evaluation of implementation
- IF P: Execute {partyModeWorkflow} for collaborative discussion on implementation
- IF S:
  1. Skip implementation (no experiments needed)
  2. Update sidecar file: add 5 to `stepsCompleted` array
  3. Update sidecar file: set `lastStep: 'implementation-skipped'`
  4. Load, read entire file, then execute {nextStepFile}
- IF C:
  1. Ensure implementation is complete (if experiments were needed)
  2. Update sidecar file: add 5 to `stepsCompleted` array
  3. Update sidecar file: set `lastStep: 'implementation'`
  4. Load, read entire file, then execute {nextStepFile}
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#5-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C or S is selected, will you then update the sidecar file frontmatter and load, read entire file, then execute {nextStepFile} to begin Writing Revisions.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Implementation completed (if experiments needed) or skipped appropriately
- Experiments implemented and results documented
- Reproducibility ensured
- Implementation document created (if experiments were done)
- Sidecar file updated with step completion
- Ready to proceed to writing revisions

### ❌ SYSTEM FAILURE:

- Not checking if implementation is needed
- Implementing when not needed
- Not documenting implementation properly
- Not updating sidecar file
- Proceeding without completing implementation (if needed)

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
