---
name: 'step-09-complete-or-loop'
description: 'Decide whether to complete workflow or loop for another review round'

# Path Definitions
workflow_path: '{project-root}/_bmad/research-project/workflows/review-revision'

# File References
thisStepFile: '{workflow_path}/steps/step-09-complete-or-loop.md'
loopStepFile: '{workflow_path}/steps/step-02-review-input.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.review-revision-state.md'
outputFolder: '{output_folder}'

# Task References
advancedElicitationTask: '{project-root}/_bmad/core/workflows/advanced-elicitation/workflow.xml'
partyModeWorkflow: '{project-root}/_bmad/core/workflows/party-mode/workflow.md'

---

# Step 9: Complete or Loop

## STEP GOAL:

To decide whether to complete the workflow (all reviews addressed) or loop back to Step 2 for another review round, updating the sidecar file with review/rebuttal history.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator
- ✅ YOU MUST ALWAYS SPEAK OUTPUT In your Agent communication style with the config `{communication_language}`

### Role Reinforcement:

- ✅ You are a Review & Revision Specialist
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in workflow completion and iteration planning
- ✅ Maintain collaborative, supportive tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on completion/loop decision
- 🚫 FORBIDDEN to start new review rounds without user decision
- 💬 Present clear options and recommendations
- 📋 Update sidecar file with history and decision

## EXECUTION PROTOCOLS:

- 🎯 Present completion status and options
- 💾 Update sidecar file with review/rebuttal history
- 📖 Mark workflow as complete or prepare for loop
- 🚫 FORBIDDEN to proceed without user decision

## CONTEXT BOUNDARIES:

- Review check is complete
- All previous steps are done
- Review/rebuttal history is available
- Focus ONLY on completion/loop decision

## COMPLETE OR LOOP PROCESS:

### 1. Review Completion Status

Review the review check results:

- How many points are addressed?
- How many points need additional work?
- What is the overall status?
- Are there critical issues remaining?

### 2. Present Completion Status

"**Workflow Status**

Review Round {currentReviewRound} Summary:
- Review points addressed: [number]/[total]
- Revisions completed: [yes/no]
- Rebuttal written: [yes/no]
- Status: [summary]

Based on the review check:
- [Summary of addressed points]
- [Summary of points requiring additional work]

### 3. Present Options

"**Next Steps**

You have two options:

**[C] Complete Workflow**
- Mark this review round as complete
- Save all work and history
- Workflow ends here

**[L] Loop to New Review Round**
- Start a new review round (Round {currentReviewRound + 1})
- Generate or load a new review
- Continue the revision process

Which option would you like?"

### 4. Handle User Decision

#### Option C: Complete Workflow

If user selects Complete:

1. **Update Sidecar File**
   - Mark workflow as complete
   - Add 9 to `stepsCompleted` array
   - Set `workflowStatus: 'complete'`
   - Set `completionDate: [current date]`
   - Preserve all review/rebuttal history

2. **Create Completion Summary**
   - Save to `{outputFolder}/completion-summary-round-{currentReviewRound}.md`
   - Include:
     - Review rounds completed
     - Reviews processed
     - Rebuttals written
     - Final status

3. **Present Completion Message**
   "**Workflow Complete!** ✅

   You've completed Review Round {currentReviewRound}:
   - Reviews processed: {number}
   - Rebuttals written: {number}
   - Paper revised and ready

   All work has been saved. Thank you for using the Review & Revision workflow!"

#### Option L: Loop to New Review Round

If user selects Loop:

1. **Update Sidecar File**
   - Increment `currentReviewRound`
   - Add 9 to `stepsCompleted` array
   - Set `lastStep: 'complete-or-loop'`
   - Preserve review/rebuttal history
   - Reset step-specific state for new round

2. **Prepare for New Round**
   - Clear temporary state
   - Keep history intact
   - Prepare for new review input

3. **Loop to Step 2**
   - Load, read entire file, then execute {loopStepFile}
   - Begin new review round

### 5. Present MENU OPTIONS

Display: "**Select an Option:** [C] Complete Workflow [L] Loop to New Review Round [A] Advanced Elicitation [P] Party Mode"

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY proceed when user selects 'C' or 'L'
- After other menu items execution, return to this menu
- User can chat or ask questions - always respond and then end with display again of the menu options

#### Menu Handling Logic:

- IF C:
  1. Complete workflow (follow process in section 4)
  2. Update sidecar file: add 9 to `stepsCompleted` array, set `workflowStatus: 'complete'`
  3. Present completion message
  4. Workflow ends
- IF L:
  1. Loop to new review round (follow process in section 4)
  2. Update sidecar file: increment `currentReviewRound`, add 9 to `stepsCompleted` array
  3. Load, read entire file, then execute {loopStepFile}
- IF A: Execute {advancedElicitationTask} for critical evaluation of completion status
- IF P: Execute {partyModeWorkflow} for collaborative discussion on completion/loop decision
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#5-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C or L is selected, will you then:
- If C: Complete workflow and end
- If L: Update sidecar file and loop to {loopStepFile} for new review round

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Completion status presented clearly
- User decision handled appropriately
- Sidecar file updated with history and decision
- Workflow completed or looped correctly
- All work preserved

### ❌ SYSTEM FAILURE:

- Not presenting completion status
- Not handling user decision properly
- Not updating sidecar file with history
- Not preserving review/rebuttal history
- Looping without proper state reset

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
