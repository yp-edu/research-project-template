---
name: 'step-01-init'
description: 'Initialize the review & revision workflow by detecting continuation state, checking for existing reviews/rebuttals, and reading the paper'

# Path Definitions
workflow_path: '{project-root}/_bmad-output/bmb-creations/research-project/workflows/review-revision'

# File References
thisStepFile: '{workflow_path}/steps/step-01-init.md'
nextStepFile: '{workflow_path}/steps/step-02-review-input.md'
workflowFile: '{workflow_path}/workflow.md'
continueFile: '{workflow_path}/steps/step-01b-continue.md'
sidecarFile: '{workflow_path}/.review-revision-state.md'
latexFolder: '{project-root}/latex'

# Task References

# Template References

---

# Step 1: Workflow Initialization

## STEP GOAL:

To initialize the review & revision workflow by detecting continuation state, checking for existing review/rebuttal documents, reading the paper from the latex folder, and preparing for the first collaborative session.

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
- ✅ You bring expertise in paper review, gap analysis, revision planning, technical implementation, writing, and rebuttal preparation, while the user brings their specific research paper and review requirements
- ✅ Maintain collaborative, analytical, detail-oriented tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on initialization and setup
- 🚫 FORBIDDEN to look ahead to future steps
- 💬 Handle initialization professionally
- 🚪 DETECT existing workflow state and handle continuation properly

## EXECUTION PROTOCOLS:

- 🎯 Show analysis before taking any action
- 💾 Initialize sidecar file and update frontmatter
- 📖 Set up frontmatter `stepsCompleted: [1]` before loading next step
- 🚫 FORBIDDEN to load next step until setup is complete

## CONTEXT BOUNDARIES:

- Variables from workflow.md are available in memory
- Previous context = what's in sidecar file + frontmatter
- Don't assume knowledge from other steps
- Paper reading and review/rebuttal discovery happens in this step

## INITIALIZATION SEQUENCE:

### 1. Check for Existing Workflow

First, check if the sidecar file already exists:

- Look for file at `{sidecarFile}`
- If exists, read the complete file including frontmatter
- If not exists, this is a fresh workflow

### 2. Handle Continuation (If Sidecar Exists)

If the sidecar file exists and has frontmatter with `stepsCompleted`:

- Check if workflow is complete (all steps in `stepsCompleted`)
- If incomplete: **STOP here** and load `{continueFile}` immediately
- Do not proceed with any initialization tasks
- Let step-01b handle the continuation logic

### 3. Handle Completed Workflow

If the sidecar file exists AND all steps are marked complete in `stepsCompleted`:

- Ask user: "I found an existing review & revision workflow from [date]. Would you like to:
  1. Start a new review & revision session
  2. Continue/update the existing workflow"
- If option 1: Create new sidecar file with timestamp suffix or reset
- If option 2: Load step-01b-continue.md

### 4. Fresh Workflow Setup (If No Sidecar)

If no sidecar file exists or no `stepsCompleted` in frontmatter:

#### A. Check for Existing Review/Rebuttal Documents

Look for existing review or rebuttal documents:

- Check `{output_folder}/review-*.md` for existing review documents
- Check `{output_folder}/rebuttal-*.md` for existing rebuttal documents
- If found, note their locations for potential use in Step 2

#### B. Read Paper from LaTeX Folder

Read the paper from the latex folder:

- Locate main LaTeX file in `{latexFolder}/main.tex` (or identify the main file)
- Read the complete paper structure
- Understand the paper's current state, sections, and content
- Note any existing revision markers or color-coded changes

#### C. Create Initial Sidecar File

Create the sidecar file at `{sidecarFile}`

Initialize frontmatter with:

```yaml
---
stepsCompleted: [1]
lastStep: 'init'
date: [current date]
user_name: {user_name}
reviewHistory: []
rebuttalHistory: []
currentReviewRound: 1
paperPath: '{latexFolder}/main.tex'
existingReviewPath: null
existingRebuttalPath: null
---
```

#### D. Show Welcome Message

"Welcome to the Review & Revision workflow! 📝

This workflow will help you:
- Generate or load paper reviews
- Analyze gaps and issues in your paper
- Plan revision strategies
- Implement necessary experiments (if needed)
- Revise your paper with color-coded changes
- Write rebuttal documents addressing reviewer concerns
- Track which review points are addressed

I've initialized the workflow state. The paper has been loaded from the latex folder. Let's begin by either generating a new review or loading an existing one."

### 5. Present MENU OPTIONS

Display: **Proceeding to Review Input...**

#### EXECUTION RULES:

- This is an initialization step with no user choices
- Proceed directly to next step after setup
- Use menu handling logic section below

#### Menu Handling Logic:

- After setup completion, immediately load, read entire file, then execute `{nextStepFile}` to begin Review Input

---

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Sidecar file initialized with step 1 marked complete
- Paper read from latex folder
- Existing review/rebuttal documents identified (if any)
- User welcomed to the process
- Ready to proceed to step 2
- OR existing workflow properly routed to step-01b-continue.md

### ❌ SYSTEM FAILURE:

- Proceeding with step 2 without sidecar file initialization
- Not checking for existing sidecar file properly
- Not reading paper from latex folder
- Creating duplicate sidecar files
- Skipping welcome message
- Not routing to step-01b-continue.md when needed

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN initialization setup is complete and sidecar file is created (OR continuation is properly routed), will you then immediately load, read entire file, then execute `{nextStepFile}` to begin Review Input.
