---
name: 'step-03-gap-analysis'
description: 'Analyze review for gaps, issues, and missing elements'

# Path Definitions
workflow_path: '{project-root}/_bmad-output/bmb-creations/research-project/workflows/review-revision'

# File References
thisStepFile: '{workflow_path}/steps/step-03-gap-analysis.md'
nextStepFile: '{workflow_path}/steps/step-04-revision-planning.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.review-revision-state.md'
outputFolder: '{output_folder}'

# Task References
brainstormingTask: '{project-root}/_bmad/core/workflows/brainstorming/workflow.md'
partyModeWorkflow: '{project-root}/_bmad/core/workflows/party-mode/workflow.md'
advancedElicitationTask: '{project-root}/_bmad/core/workflows/advanced-elicitation/workflow.xml'

---

# Step 3: Gap Analysis

## STEP GOAL:

To analyze the review document comprehensively, identifying gaps, issues, missing elements, and prioritizing concerns that need to be addressed in the revision process.

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
- ✅ You bring expertise in critical analysis, gap identification, and issue prioritization
- ✅ Maintain collaborative, analytical, constructive tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on gap analysis and issue identification
- 🚫 FORBIDDEN to start planning revisions or implementing changes
- 💬 Use Brainstorming tool for identifying gaps
- 📋 Document prioritized issues for revision planning

## EXECUTION PROTOCOLS:

- 🎯 Analyze review comprehensively
- 💾 Document gap analysis findings
- 📖 Update sidecar file with gap analysis status
- 🚫 FORBIDDEN to proceed without completing gap analysis

## CONTEXT BOUNDARIES:

- Review document is available from previous step
- Paper has been read from latex folder
- Focus ONLY on gap analysis
- Don't plan revisions or implement changes yet

## GAP ANALYSIS PROCESS:

### 1. Review Document Analysis

Analyze the review document systematically:

- Read the complete review document
- Identify all concerns, questions, and suggestions
- Categorize issues by type (methodology, experiments, writing, clarity, etc.)
- Note strengths mentioned in the review

### 2. Gap Identification

Identify gaps and missing elements:

- **Missing Experiments or Baselines**
  - Are there requested experiments that are missing?
  - Are there baseline comparisons that should be included?
  - Are there ablation studies that would strengthen the paper?

- **Methodology Gaps**
  - Are there methodological concerns or missing details?
  - Are there reproducibility issues?
  - Are there technical clarifications needed?

- **Writing Gaps**
  - Are there incomplete sections?
  - Are there unclear explanations?
  - Are there missing related work comparisons?
  - Are there contribution statements that need strengthening?

- **Content Gaps**
  - Are there missing analyses or discussions?
  - Are there missing visualizations or tables?
  - Are there missing experimental details?

### 3. Issue Prioritization

Prioritize identified issues:

- **Critical Issues**: Must be addressed (e.g., major methodological concerns, missing key experiments)
- **Important Issues**: Should be addressed (e.g., missing baselines, unclear explanations)
- **Minor Issues**: Nice to address (e.g., typos, minor clarifications)

### 4. Document Gap Analysis

Create gap analysis document:

- Save to `{outputFolder}/gap-analysis-round-{currentReviewRound}.md`
- Include:
  - Summary of review concerns
  - Categorized gaps (experiments, methodology, writing, content)
  - Prioritized issue list
  - Recommendations for addressing each gap

### 5. Present Gap Analysis Summary

"**Gap Analysis Complete**

I've analyzed the review and identified:

- **Critical Issues**: [number] - Must be addressed
- **Important Issues**: [number] - Should be addressed
- **Minor Issues**: [number] - Nice to address

Key gaps identified:
- [List top 3-5 critical/important gaps]

The gap analysis document has been saved. We're ready to plan how to address these issues."

### 6. Present MENU OPTIONS

Display: "**Select an Option:** [A] Advanced Elicitation [P] Party Mode [C] Continue to Revision Planning"

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY proceed to next step when user selects 'C'
- After other menu items execution, return to this menu
- User can chat or ask questions - always respond and then end with display again of the menu options

#### Menu Handling Logic:

- IF A: Execute {advancedElicitationTask} for critical evaluation of gap analysis
- IF P: Execute {partyModeWorkflow} for collaborative discussion on gaps
- IF B: Execute {brainstormingTask} for additional gap identification
- IF C:
  1. Ensure gap analysis is documented
  2. Update sidecar file: add 3 to `stepsCompleted` array
  3. Update sidecar file: set `lastStep: 'gap-analysis'`
  4. Load, read entire file, then execute {nextStepFile}
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#6-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected and gap analysis is documented, will you then update the sidecar file frontmatter and load, read entire file, then execute {nextStepFile} to begin Revision Planning.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Review document analyzed comprehensively
- Gaps identified in all relevant categories
- Issues prioritized appropriately
- Gap analysis document created and saved
- Sidecar file updated with step completion
- Ready to proceed to revision planning

### ❌ SYSTEM FAILURE:

- Not analyzing review comprehensively
- Missing key gaps or issues
- Not prioritizing issues appropriately
- Not documenting gap analysis
- Not updating sidecar file
- Proceeding without completing gap analysis

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
