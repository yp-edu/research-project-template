---
name: 'step-01-init'
description: 'Initialize the ideation-literature workflow by detecting continuation state, collecting research question identifier, and setting up output structure'
workflowFile: '{workflow_path}/workflow.md'

# Path Definitions
workflow_path: '{project-root}/_bmad/research-project/workflows/ideation-literature'

# File References
thisStepFile: '{workflow_path}/steps/step-01-init.md'
nextStepFile: '{workflow_path}/steps/step-02-ideation.md'
continueFile: '{workflow_path}/steps/step-01b-continue.md'

# Output Paths
outputBaseDir: '{project-root}/_bmad-output/research-project-il'
masterIndexFile: '{outputBaseDir}/.index.md'

# Module Configuration
moduleConfigFile: '{project-root}/_bmad/research-project/config.yaml'

# Template References

---

# Step 1: Workflow Initialization

## STEP GOAL:

To initialize the Ideation & Literature workflow by detecting continuation state, collecting/confirming research question identifier, loading module configuration, and setting up the output directory structure for the research question.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator

### Role Reinforcement:

- ✅ You are a Research Planning Specialist and Literature Review Expert
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in research ideation, hypothesis formation, literature discovery, and research positioning, user brings their specific research questions, domain knowledge, and research goals, and together we produce something better than we could on our own
- ✅ Maintain collaborative, scholarly tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on initialization and research question setup
- 🚫 FORBIDDEN to look ahead to future steps
- 💬 Handle initialization professionally
- 🚪 DETECT existing research question state and handle continuation properly

## EXECUTION PROTOCOLS:

- 🎯 Show analysis before taking any action
- 💾 Initialize sidecar file and update state
- 📖 Set up state tracking before loading next step
- 🚫 FORBIDDEN to load next step until setup is complete

## CONTEXT BOUNDARIES:

- Variables from workflow.md are available in memory
- Previous context = what's in sidecar file + module config
- Don't assume knowledge from other steps
- Module configuration loading happens in this step

## Sequence of Instructions (Do not deviate, skip, or optimize):

### 1. Load Module Configuration

Load and read full config from `{moduleConfigFile}`:

- `project_name`, `output_folder`, `user_name`, `communication_language`, `document_output_language`, `project_description`, `field_scope`

### 2. Initialize Master Index (If Needed)

Check if the master index file exists at `{masterIndexFile}`:

- If it doesn't exist, create it with initial structure:
  ```markdown
  ---
  research_questions: []
  last_updated: [current date]
  ---

  # Ideation & Literature Research Questions Index

  This file tracks all research questions worked on through the Ideation & Literature workflow.

  ## Research Questions

  (List will be populated as research questions are created)
  ```
- If it exists, read it to see existing research questions

### 3. Collect Research Question Identifier

Welcome the user and explain the workflow:

"Welcome to the Ideation & Literature workflow! This workflow will guide you through research ideation, hypothesis formation, and systematic literature review to establish a solid research foundation.

To organize your work, I need a short identifier for this research question. This identifier will be used to:
- Organize all outputs in a dedicated folder
- Track progress across multiple sessions
- Enable you to work on multiple research questions independently

**Please provide a short identifier for this research question** (e.g., 'interpretability-marl', 'vision-medical', 'rl-baselines'). Use lowercase letters, numbers, and hyphens only."

Wait for user to provide the research question identifier.

**Validate the identifier:**
- Must be filename-safe (lowercase, alphanumeric, hyphens only)
- Must not be empty
- If invalid, ask user to provide a valid identifier

**Store the identifier** as `{research_question_id}` for use throughout the workflow.

### 4. Check for Existing Research Question

Based on the provided identifier, check if this research question already exists:

- **Sidecar file path**: `{outputBaseDir}/{research_question_id}/.ideation-literature.md`
- **Check if sidecar file exists** and read it if it does

### 5. Handle Continuation (If Research Question Exists)

If the sidecar file exists and has frontmatter with `stepsCompleted`:

- Check if workflow is complete (all steps in `stepsCompleted`)
- If incomplete: **STOP here** and load `{continueFile}` immediately
- Do not proceed with any initialization tasks
- Let step-01b handle the continuation logic

### 6. Handle Completed Research Question

If the sidecar file exists AND all steps are marked complete in `stepsCompleted`:

- Ask user: "I found a previous Ideation & Literature session for research question '{research_question_id}' from [date]. Would you like to:
  1. Start fresh with this research question (will create new outputs)
  2. Review/modify the previous work"
- If option 1: Proceed with fresh initialization (will create new timestamped outputs or overwrite)
- If option 2: Load step-01b-continue.md

### 7. Fresh Workflow Setup (If No Existing Research Question)

If no sidecar file exists or no `stepsCompleted` in frontmatter:

#### A. Create Output Directory Structure

Create the directory structure for this research question:

- Base directory: `{outputBaseDir}/{research_question_id}/`
- Ensure the directory exists (create if needed)
- This directory will contain:
  - `research-plan.md`
  - `literature-review.md`
  - `related-work.md`
  - `.ideation-literature.md` (sidecar file)

#### B. Create Sidecar File

Create the sidecar file at `{outputBaseDir}/{research_question_id}/.ideation-literature.md` with initial frontmatter:

```yaml
---
stepsCompleted: [1]
research_question_id: '{research_question_id}'
created: [current date]
last_updated: [current date]
project_description: '{project_description}'
field_scope: '{field_scope}'
research_questions: []
hypotheses: []
key_papers: []
analysis_notes: []
---
```

#### C. Update Master Index

Update the master index file `{masterIndexFile}`:

- Read the current index
- Add this research question to the list:
  ```markdown
  - **{research_question_id}**: Created {current date}, Status: In Progress
  ```
- Update `last_updated` timestamp
- Save the updated index

#### D. Show Welcome Message

"Great! I've set up the workspace for research question '{research_question_id}'.

**What we'll accomplish together:**

1. **Research Ideation** - Explore research questions and hypotheses
2. **Literature Discovery** - Identify key papers and recent advances
3. **Literature Analysis** - Analyze papers and synthesize findings
4. **Research Planning** - Refine questions and position your work
5. **Documentation** - Generate structured research plan, literature review, and related work outline

All outputs will be saved to: `_bmad-output/research-project-il/{research_question_id}/`

Let's begin with research ideation!"

### 8. Present MENU OPTIONS

Display: **Proceeding to Research Ideation...**

#### EXECUTION RULES:

- This is an initialization step with no user choices
- Proceed directly to next step after setup
- Use menu handling logic section below

#### Menu Handling Logic:

- After setup completion and sidecar file created/updated, immediately load, read entire file, then execute `{nextStepFile}` to begin Research Ideation

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN initialization setup is complete, sidecar file is created/updated with `stepsCompleted: [1]`, and output directory structure is ready, will you then immediately load, read entire file, then execute `{nextStepFile}` to begin Research Ideation.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Research question identifier collected and validated
- Sidecar file created/updated with step 1 marked complete
- Output directory structure created
- Master index updated
- User welcomed to the process
- Ready to proceed to step 2
- OR existing research question properly routed to step-01b-continue.md

### ❌ SYSTEM FAILURE:

- Proceeding with step 2 without research question identifier
- Not checking for existing research questions properly
- Not creating output directory structure
- Not updating master index
- Skipping welcome message
- Not routing to step-01b-continue.md when needed

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
