---
name: 'step-04-revision-planning'
description: 'Plan revision strategy and determine required actions'

# Path Definitions
workflow_path: '{project-root}/_bmad/research-project/workflows/review-revision'

# File References
thisStepFile: '{workflow_path}/steps/step-04-revision-planning.md'
nextStepFile: '{workflow_path}/steps/step-05-implementation.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.review-revision-state.md'
outputFolder: '{output_folder}'

# Task References
partyModeWorkflow: '{project-root}/_bmad/core/workflows/party-mode/workflow.md'
advancedElicitationTask: '{project-root}/_bmad/core/workflows/advanced-elicitation/workflow.xml'

---

# Step 4: Revision Planning

## STEP GOAL:

To collaboratively plan the revision strategy, prioritize feedback and issues, determine what experiments and writing are needed, and set revision timeline and priorities.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator
- ✅ YOU MUST ALWAYS SPEAK OUTPUT In your Agent communication style with the config `{communication_language}`

### Role Reinforcement:

- ✅ You are a Review & Revision Specialist (acting as Advisor + Reviewer)
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in strategic planning, revision prioritization, and research methodology
- ✅ Maintain collaborative, strategic, analytical tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on revision planning
- 🚫 FORBIDDEN to start implementing experiments or writing revisions
- 💬 Use Party-Mode for collaborative planning
- 📋 Document revision plan with priorities and timeline

## EXECUTION PROTOCOLS:

- 🎯 Plan revision strategy collaboratively
- 💾 Document revision plan
- 📖 Update sidecar file with planning status
- 🚫 FORBIDDEN to proceed without a revision plan

## CONTEXT BOUNDARIES:

- Gap analysis is available from previous step
- Review document is available
- Paper has been read
- Focus ONLY on planning
- Don't implement or write yet

## REVISION PLANNING PROCESS:

### 1. Review Gap Analysis

Review the gap analysis from previous step:

- Review prioritized issues
- Understand critical vs important vs minor issues
- Consider dependencies between issues

### 2. Strategic Planning Discussion

Engage with user to plan revision strategy:

- **Prioritization Discussion**
  - Which issues should be addressed first?
  - What are the dependencies between revisions?
  - What is the timeline for addressing issues?

- **Experiment Planning**
  - What experiments need to be implemented?
  - What baselines need to be added?
  - What ablations would strengthen the paper?
  - Are there reproducibility concerns to address?

- **Writing Planning**
  - Which sections need revision?
  - What new content needs to be added?
  - What clarifications are needed?
  - How should contributions be strengthened?

### 3. Create Revision Plan

Document the revision plan:

- Save to `{outputFolder}/revision-plan-round-{currentReviewRound}.md`
- Include:
  - Prioritized revision tasks
  - Experiment requirements (if any)
  - Writing revision requirements
  - Timeline and milestones
  - Success criteria for each revision

### 4. Determine Next Steps

Based on the revision plan:

- Identify if experiments are needed (Step 5: Implementation)
- Identify writing revisions needed (Step 6: Writing Revisions)
- Note any dependencies between steps

### 5. Present Revision Plan Summary

"**Revision Plan Complete**

I've created a revision plan that addresses:

- **Experiments Needed**: [yes/no and what]
- **Writing Revisions**: [sections and content]
- **Priority Order**: [top priorities]

The revision plan has been saved. We're ready to proceed with implementation."

### 6. Present MENU OPTIONS

Display: "**Select an Option:** [A] Advanced Elicitation [P] Party Mode [C] Continue to Implementation"

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY proceed to next step when user selects 'C'
- After other menu items execution, return to this menu
- User can chat or ask questions - always respond and then end with display again of the menu options

#### Menu Handling Logic:

- IF A: Execute {advancedElicitationTask} for critical evaluation of revision plan
- IF P: Execute {partyModeWorkflow} for collaborative revision planning discussion
- IF C:
  1. Ensure revision plan is documented
  2. Update sidecar file: add 4 to `stepsCompleted` array
  3. Update sidecar file: set `lastStep: 'revision-planning'`
  4. Load, read entire file, then execute {nextStepFile}
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#6-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected and revision plan is documented, will you then update the sidecar file frontmatter and load, read entire file, then execute {nextStepFile} to begin Implementation.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Revision strategy planned collaboratively
- Priorities established
- Experiment and writing requirements identified
- Revision plan document created and saved
- Sidecar file updated with step completion
- Ready to proceed to implementation

### ❌ SYSTEM FAILURE:

- Not planning revision strategy properly
- Missing key revision requirements
- Not prioritizing issues appropriately
- Not documenting revision plan
- Not updating sidecar file
- Proceeding without completing revision planning

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
