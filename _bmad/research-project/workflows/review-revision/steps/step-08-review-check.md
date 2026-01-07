---
name: 'step-08-review-check'
description: 'Validate which review points are addressed vs not addressed'

# Path Definitions
workflow_path: '{project-root}/_bmad-output/bmb-creations/research-project/workflows/review-revision'

# File References
thisStepFile: '{workflow_path}/steps/step-08-review-check.md'
nextStepFile: '{workflow_path}/steps/step-09-complete-or-loop.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.review-revision-state.md'
outputFolder: '{output_folder}'

# Task References
advancedElicitationTask: '{project-root}/_bmad/core/workflows/advanced-elicitation/workflow.xml'
partyModeWorkflow: '{project-root}/_bmad/core/workflows/party-mode/workflow.md'

---

# Step 8: Review Check

## STEP GOAL:

To validate which initial review points are addressed by the rebuttal and revisions, identify which points require additional work, and provide a status report on review point coverage.

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
- ✅ You bring expertise in critical evaluation, validation, and completeness assessment
- ✅ Maintain collaborative, analytical, thorough tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on validation and checking
- 🚫 FORBIDDEN to start new revisions or loop decisions
- 💬 Use Advanced Elicitation for critical evaluation
- 📋 Document review check results

## EXECUTION PROTOCOLS:

- 🎯 Validate review point coverage
- 💾 Document review check results
- 📖 Update sidecar file with check status
- 🚫 FORBIDDEN to proceed without completing review check

## CONTEXT BOUNDARIES:

- Review document is available
- Rebuttal document is available
- Revisions have been made
- Focus ONLY on validation
- Don't make completion/loop decisions yet

## REVIEW CHECK PROCESS:

### 1. Review Point Mapping

Map review points to responses:

- Read the original review document
- Read the rebuttal document
- Map each review point to its response
- Identify which points have responses
- Note any points without responses

### 2. Validation Analysis

For each review point:

- **Addressed Points**
  - Check if the point is addressed in rebuttal
  - Verify that revisions address the concern
  - Confirm response quality and completeness
  - Mark as "Addressed" if fully covered

- **Partially Addressed Points**
  - Check if the point is partially addressed
  - Identify what's missing
  - Note what additional work is needed
  - Mark as "Partially Addressed"

- **Not Addressed Points**
  - Identify points without responses
  - Note why they weren't addressed
  - Determine if they need to be addressed
  - Mark as "Not Addressed" or "Requires Additional Work"

### 3. Create Review Check Report

Create comprehensive review check report:

- Save to `{outputFolder}/review-check-round-{currentReviewRound}.md`
- Include:
  - Summary statistics (addressed/partially addressed/not addressed)
  - Detailed point-by-point status
  - Points requiring additional work
  - Recommendations for next steps

### 4. Present Review Check Summary

"**Review Check Complete**

I've validated the review point coverage:

- **Addressed**: [number] points - Fully addressed in rebuttal and revisions
- **Partially Addressed**: [number] points - Some work done, but may need more
- **Not Addressed**: [number] points - Require additional work

Points requiring additional work:
- [List top points that need more work]

The review check report has been saved. We can now decide whether to complete or loop for another review round."

### 5. Present MENU OPTIONS

Display: "**Select an Option:** [A] Advanced Elicitation [P] Party Mode [C] Continue to Complete or Loop"

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY proceed to next step when user selects 'C'
- After other menu items execution, return to this menu
- User can chat or ask questions - always respond and then end with display again of the menu options

#### Menu Handling Logic:

- IF A: Execute {advancedElicitationTask} for critical evaluation of review check
- IF P: Execute {partyModeWorkflow} for collaborative discussion on review check
- IF C:
  1. Ensure review check is complete and documented
  2. Update sidecar file: add 8 to `stepsCompleted` array
  3. Update sidecar file: set `lastStep: 'review-check'`
  4. Load, read entire file, then execute {nextStepFile}
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#5-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected and review check is complete, will you then update the sidecar file frontmatter and load, read entire file, then execute {nextStepFile} to begin Complete or Loop decision.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Review points validated comprehensively
- Addressed/not addressed status determined
- Review check report created and saved
- Sidecar file updated with check status
- Ready to proceed to completion/loop decision

### ❌ SYSTEM FAILURE:

- Not validating all review points
- Not mapping points to responses properly
- Not documenting review check results
- Not updating sidecar file
- Proceeding without completing review check

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
