---
name: 'step-02-review-input'
description: 'Either generate a new review or accept an existing review document'

# Path Definitions
workflow_path: '{project-root}/_bmad-output/bmb-creations/research-project/workflows/review-revision'

# File References
thisStepFile: '{workflow_path}/steps/step-02-review-input.md'
nextStepFile: '{workflow_path}/steps/step-03-gap-analysis.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.review-revision-state.md'
outputFolder: '{output_folder}'

# Task References
advancedElicitationTask: '{project-root}/_bmad/core/workflows/advanced-elicitation/workflow.xml'
partyModeWorkflow: '{project-root}/_bmad/core/workflows/party-mode/workflow.md'

---

# Step 2: Review Input

## STEP GOAL:

To either generate a new structured review document or accept/load an existing review document, establishing the foundation for the revision process.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator
- ✅ YOU MUST ALWAYS SPEAK OUTPUT In your Agent communication style with the config `{communication_language}`

### Role Reinforcement:

- ✅ You are a Review & Revision Specialist (acting as Reviewer agent)
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in paper review, critical evaluation, and structured assessment
- ✅ Maintain collaborative, analytical, constructive tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on review input (generation or loading)
- 🚫 FORBIDDEN to start gap analysis or revision planning
- 💬 Use Advanced Elicitation for quality review generation
- 📋 Create structured review document following top conference templates

## EXECUTION PROTOCOLS:

- 🎯 Generate or load review document
- 💾 Save review document to output folder
- 📖 Update sidecar file with review information
- 🚫 FORBIDDEN to proceed without a review document

## CONTEXT BOUNDARIES:

- Sidecar file with initialization data is available
- Paper has been read from latex folder
- Focus ONLY on review input
- Don't analyze gaps or plan revisions yet

## REVIEW INPUT PROCESS:

### 1. Present Review Input Options

"**Review Input**

We need a review document to begin the revision process. You can either:

- **Generate a new review**: I'll create a comprehensive structured review following top conference templates (NeurIPS, ICML, ICLR, etc.) with scores and detailed feedback
- **Load an existing review**: If you already have a review document, we can load it and proceed

Which option would you prefer?"

### 2. Handle User Selection

#### Option G: Generate Review

If user selects Generate:

1. **Comprehensive Paper Review**
   - Review the paper comprehensively
   - Assess all sections (Introduction, Methods, Experiments, Results, Discussion, Related Work)
   - Check for clarity, completeness, novelty, reproducibility
   - Identify strengths and weaknesses

2. **Create Structured Review Document**
   - Use top conference review template format
   - Include overall scores (Accept, Weak Accept, Borderline, Weak Reject, Reject)
   - Structure with sections:
     - Summary
     - Strengths
     - Weaknesses
     - Questions
     - Suggestions
   - Include quantitative scores where applicable
   - Save to `{outputFolder}/review-round-{currentReviewRound}.md`

3. **Update Sidecar File**
   - Add review path to `reviewHistory`
   - Set `existingReviewPath` to the new review file

#### Option L: Load Review

If user selects Load:

1. **Request Review Document**
   - Ask user to provide the review document path
   - Or check for existing review documents in output folder
   - Validate the review document format

2. **Load and Validate Review**
   - Read the review document
   - Ensure it's in structured format
   - Note any missing sections or information

3. **Update Sidecar File**
   - Add review path to `reviewHistory`
   - Set `existingReviewPath` to the loaded review file

### 3. Review Document Summary

After review is generated or loaded:

"**Review Document Ready**

- Review source: [Generated/Loaded]
- Review file: {reviewPath}
- Review round: {currentReviewRound}

The review document is ready. We can now proceed to analyze gaps and issues."

### 4. Present MENU OPTIONS

Display: "**Select an Option:** [G] Generate Review [L] Load Review [A] Advanced Elicitation [P] Party Mode [C] Continue to Gap Analysis"

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY proceed to next step when user selects 'C'
- After other menu items execution, return to this menu
- User can chat or ask questions - always respond and then end with display again of the menu options

#### Menu Handling Logic:

- IF G: Generate new review document (follow process in section 2)
- IF L: Load existing review document (follow process in section 2)
- IF A: Execute {advancedElicitationTask} for critical evaluation of review quality
- IF P: Execute {partyModeWorkflow} for collaborative review discussion
- IF C:
  1. Ensure review document exists (generated or loaded)
  2. Update sidecar file: add 2 to `stepsCompleted` array
  3. Update sidecar file: set `lastStep: 'review-input'`
  4. Load, read entire file, then execute {nextStepFile}
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#4-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected and review document is ready (generated or loaded), will you then update the sidecar file frontmatter and load, read entire file, then execute {nextStepFile} to begin Gap Analysis.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Review document generated or loaded successfully
- Review document follows structured format with scores
- Review document saved to output folder
- Sidecar file updated with review information
- Ready to proceed to gap analysis

### ❌ SYSTEM FAILURE:

- Proceeding without review document
- Not saving review document properly
- Not updating sidecar file
- Skipping review generation/loading process
- Not following structured review format

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
