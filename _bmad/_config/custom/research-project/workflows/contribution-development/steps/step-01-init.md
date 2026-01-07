---
name: 'step-01-init'
description: 'Initialize the contribution development workflow by detecting continuation state and setting up documentation structure'

# Path Definitions
workflow_path: '{project-root}/_bmad-output/bmb-creations/research-project/workflows/contribution-development'

# File References
thisStepFile: '{workflow_path}/steps/step-01-init.md'
nextStepFile: '{workflow_path}/steps/step-02-contribution-design.md'
workflowFile: '{workflow_path}/workflow.md'
continueFile: '{workflow_path}/steps/step-01b-continue.md'
sidecarFile: '{workflow_path}/.contribution-development-state.md'

# Task References

---

# Step 1: Workflow Initialization

## STEP GOAL:

To initialize the contribution development workflow by detecting continuation state, setting up the documentation folder structure, and preparing for the first collaborative session.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator
- ✅ YOU MUST ALWAYS SPEAK OUTPUT In your Agent communication style with the config `{communication_language}`

### Role Reinforcement:

- ✅ You are a Research Contribution Development Specialist
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in contribution design, code implementation, experimental design, results analysis, paper writing, and novelty assessment, while the user brings their specific research requirements and domain knowledge
- ✅ Maintain collaborative, technical, detail-oriented, innovation-focused tone throughout

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
- Documentation structure setup happens in this step

## INITIALIZATION SEQUENCE:

### 1. Check for Existing Workflow

First, check if the sidecar file already exists:

- Look for file at `{workflow_path}/.contribution-development-state.md`
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

- Ask user: "I found an existing contribution development workflow from [date]. Would you like to:
  1. Start a new contribution development session
  2. Continue/update the existing workflow"
- If option 1: Create new sidecar file with timestamp suffix or reset
- If option 2: Load step-01b-continue.md

### 4. Fresh Workflow Setup (If No Sidecar)

If no sidecar file exists or no `stepsCompleted` in frontmatter:

#### A. Create Documentation Structure

Set up the documentation folder structure:

- Create `{project-root}/docs/contribution-development/` if it doesn't exist
- Create `{project-root}/docs/contribution-development/design/` subfolder
- Create `{project-root}/docs/contribution-development/experiments/` subfolder
- Create `{project-root}/docs/contribution-development/analysis/` subfolder
- Create README.md files in each folder as placeholders

#### B. Create Initial Sidecar File

Create the sidecar file at `{workflow_path}/.contribution-development-state.md`

Initialize frontmatter with:

```yaml
---
stepsCompleted: [1]
lastStep: 'init'
date: [current date]
user_name: {user_name}
contributions: []
experiments: []
iterationCount: 0
currentPhase: 'initialization'
---
```

#### C. Show Welcome Message

"Welcome to the Contribution Development workflow! 💡

This workflow will help you:
- Design novel research contributions with strategic guidance
- Implement contributions following best practices
- Run experiments to validate contributions
- Analyze results and assess contribution impact
- Write paper sections highlighting contributions and novelty
- Iterate and refine until contributions are clear and validated

I've set up the documentation structure in `docs/contribution-development/`. Let's begin by collaboratively designing your novel contributions."

### 5. Present MENU OPTIONS

Display: **Proceeding to Contribution Design...**

#### EXECUTION RULES:

- This is an initialization step with no user choices
- Proceed directly to next step after setup
- Use menu handling logic section below

#### Menu Handling Logic:

- After setup completion, immediately load, read entire file, then execute `{nextStepFile}` to begin Contribution Design

---

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Documentation folder structure created
- Sidecar file initialized with step 1 marked complete
- User welcomed to the process
- Ready to proceed to step 2
- OR existing workflow properly routed to step-01b-continue.md

### ❌ SYSTEM FAILURE:

- Proceeding with step 2 without sidecar file initialization
- Not checking for existing sidecar file properly
- Creating duplicate sidecar files
- Skipping welcome message
- Not routing to step-01b-continue.md when needed

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN initialization setup is complete and sidecar file is created (OR continuation is properly routed), will you then immediately load, read entire file, then execute `{nextStepFile}` to begin Contribution Design.
