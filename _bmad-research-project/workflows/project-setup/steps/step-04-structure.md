---
name: 'step-04-structure'
description: 'Verify and configure project directory structure'

# Path Definitions
workflow_path: '{project-root}/_bmad/research-project/workflows/project-setup'

# File References
thisStepFile: '{workflow_path}/steps/step-04-structure.md'
nextStepFile: '{workflow_path}/steps/step-05-configure.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.project-setup-state.md'
---

# Step 4: Project Structure Setup

## STEP GOAL:

To verify and configure the project directory structure, ensuring all required directories exist and are properly configured (especially the results/ directory for outputs).

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator

### Role Reinforcement:

- ✅ You are a Research Project Setup Specialist and Configuration Assistant
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in project structure and directory management, user brings their specific project requirements, and together we produce something better than we could on our own
- ✅ Maintain collaborative, helpful tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on verifying and creating directory structure
- 🚫 FORBIDDEN to modify file contents in this step
- 💬 Report clearly on structure verification
- ✅ Ensure .gitignore properly configured

## EXECUTION PROTOCOLS:

- 🎯 Verify required directories exist
- 💾 Create missing directories if needed
- 📖 Update frontmatter `stepsCompleted` to add 4 at the end of the array before loading next step
- 🚫 FORBIDDEN to load next step until user selects 'C' and structure is verified

## CONTEXT BOUNDARIES:

- Sidecar file with configuration data is available
- Focus ONLY on directory structure
- Don't modify file contents
- This is about structure, not content

## STRUCTURE SETUP PROCESS:

### 1. Verify Required Directories

Check that the following directories exist:

- `{project-root}/src/` - Source code directory
- `{project-root}/scripts/` - Scripts directory
- `{project-root}/latex/` - LaTeX files directory
- `{project-root}/results/` - Results/output directory (must be gitignored)
- `{project-root}/tests/` - Tests directory (if applicable)

### 2. Create Missing Directories

For any missing directories:
- Create the directory structure
- Report which directories were created

### 3. Verify results/ Directory

Ensure `{project-root}/results/` exists:
- If it doesn't exist, create it
- This directory should be gitignored (check in next step)

### 4. Verify .gitignore Configuration

Check `{project-root}/.gitignore`:
- Verify that `results/` is included in .gitignore
- If not present, add `results/` to .gitignore
- Verify other common patterns are present (e.g., `__pycache__/`, `*.pyc`, `.env`, etc.)

### 5. Set Up Experiment Tracking Directories (Optional)

If needed for the project:
- Create subdirectories in `results/` for experiment tracking
- Examples: `results/experiments/`, `results/models/`, `results/figures/`

### 6. Report on Structure

After verification, provide a summary:

"I've verified and configured the project structure:

**Directory Structure:**
- ✅ src/ - Source code directory
- ✅ scripts/ - Scripts directory
- ✅ latex/ - LaTeX files directory
- ✅ results/ - Results/output directory (gitignored)
- ✅ tests/ - Tests directory

**Configuration:**
- ✅ .gitignore properly configured for results/

All required directories are in place and ready for research work."

### 7. Update Sidecar File

Update the sidecar file `{sidecarFile}` to mark this step complete:

```yaml
---
stepsCompleted: [1, 2, 3, 4]
lastStep: 'structure'
# ... rest of frontmatter preserved
---
```

### 8. Present MENU OPTIONS

Display: **Select an Option:** [C] Continue

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY proceed to next step when user selects 'C'
- User can chat or ask questions - always respond and then end with display again of the menu options
- Use menu handling logic section below

#### Menu Handling Logic:

- IF C: Update sidecar file frontmatter `stepsCompleted: [1, 2, 3, 4]`, then load, read entire file, then execute {nextStepFile}
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#8-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected and structure verification is complete and frontmatter is updated, will you then load, read entire file, then execute `{nextStepFile}` to begin initial configuration.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- All required directories verified or created
- results/ directory exists and is gitignored
- .gitignore properly configured
- Sidecar file updated with step 4 completion
- Clear report provided on structure
- Menu presented and user input handled correctly

### ❌ SYSTEM FAILURE:

- Not verifying all required directories
- Not creating missing directories
- Not verifying .gitignore configuration
- Not updating sidecar file
- Proceeding to next step without 'C' selection

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
