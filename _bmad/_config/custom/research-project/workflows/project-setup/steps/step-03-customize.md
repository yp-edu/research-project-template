---
name: 'step-03-customize'
description: 'Replace all placeholders in project files with collected configuration data'

# Path Definitions
workflow_path: '{project-root}/_bmad-output/bmb-creations/research-project/workflows/project-setup'

# File References
thisStepFile: '{workflow_path}/steps/step-03-customize.md'
nextStepFile: '{workflow_path}/steps/step-04-structure.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.project-setup-state.md'

# Task References
advancedElicitationTask: '{project-root}/_bmad/core/workflows/advanced-elicitation/workflow.xml'
partyModeWorkflow: '{project-root}/_bmad/core/workflows/party-mode/workflow.md'
---

# Step 3: Template Customization

## STEP GOAL:

To replace all placeholders (`<NAME>`, `<LAB>`, `<EMAIL>`) in project files with the collected configuration data, ensuring all template files are properly customized.

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
- ✅ You bring expertise in file operations and template customization, user brings their specific project requirements, and together we produce something better than we could on our own
- ✅ Maintain collaborative, helpful tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on replacing placeholders in files
- 🚫 FORBIDDEN to modify file structure or add new content beyond replacements
- 💬 Report clearly on what files were modified
- ✅ Replace placeholders exactly as specified

## EXECUTION PROTOCOLS:

- 🎯 Load configuration data from sidecar file
- 💾 Replace placeholders in all specified files
- 📖 Update frontmatter `stepsCompleted` to add 3 at the end of the array before loading next step
- 🚫 FORBIDDEN to load next step until user selects 'C' and replacements are complete

## CONTEXT BOUNDARIES:

- Sidecar file with configuration data is available
- Focus ONLY on placeholder replacement
- Don't modify file structure or add new content
- This is about customization, not creation

## TEMPLATE CUSTOMIZATION PROCESS:

### 1. Load Configuration Data

Read the sidecar file `{sidecarFile}` to get:
- `author_name`: Value to replace `<NAME>`
- `author_lab`: Value to replace `<LAB>` (may be empty)
- `author_email`: Value to replace `<EMAIL>`
- `project_name`: May need to update in some files

### 2. Identify Files to Modify

The following files need placeholder replacement:

- `{project-root}/README.md`
- `{project-root}/latex/main.tex`
- `{project-root}/latex/sections/*.tex` (all .tex files in sections/)
- `{project-root}/pyproject.toml`
- `{project-root}/src/research_project_template/__init__.py` (and other Python files if they contain placeholders)
- Any other configuration files that contain placeholders

### 3. Replace Placeholders in README.md

Read `{project-root}/README.md` and replace:
- `<NAME>` → `{author_name}`
- `<LAB>` → `{author_lab}` (if author_lab is not empty, otherwise remove or leave as-is based on context)
- `<EMAIL>` → `{author_email}`

### 4. Replace Placeholders in LaTeX Files

For each LaTeX file (`latex/main.tex` and `latex/sections/*.tex`):
- Replace `<NAME>` → `{author_name}`
- Replace `<LAB>` → `{author_lab}` (if author_lab is not empty)
- Replace `<EMAIL>` → `{author_email}`

### 5. Replace Placeholders in Python Package Files

For `pyproject.toml` and Python files in `src/`:
- Replace `<NAME>` → `{author_name}`
- Replace `<LAB>` → `{author_lab}` (if author_lab is not empty)
- Replace `<EMAIL>` → `{author_email}`

### 6. Update Project Name (If Changed)

If `project_name` differs from 'research-project-template':
- Update package name in `pyproject.toml` if needed
- Update any references to project name in configuration files

### 7. Report on Modifications

After completing replacements, provide a summary:

"I've completed the placeholder replacements in the following files:

**Files Modified:**
- README.md
- latex/main.tex
- latex/sections/*.tex ([X] files)
- pyproject.toml
- [Other files modified]

**Replacements Made:**
- `<NAME>` → {author_name}
- `<EMAIL>` → {author_email}
- `<LAB>` → {author_lab or 'Skipped (not provided)'}

All placeholders have been replaced with your configuration data."

### 8. Update Sidecar File

Update the sidecar file `{sidecarFile}` to mark this step complete:

```yaml
---
stepsCompleted: [1, 2, 3]
lastStep: 'customize'
# ... rest of frontmatter preserved
---
```

### 9. Present MENU OPTIONS

Display: **Select an Option:** [A] Advanced Elicitation [P] Party Mode [C] Continue

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY proceed to next step when user selects 'C'
- After other menu items execution, return to this menu
- User can chat or ask questions - always respond and then end with display again of the menu options
- Use menu handling logic section below

#### Menu Handling Logic:

- IF A: Execute {advancedElicitationTask}
- IF P: Execute {partyModeWorkflow}
- IF C: Update sidecar file frontmatter `stepsCompleted: [1, 2, 3]`, then load, read entire file, then execute {nextStepFile}
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#9-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected and placeholder replacements are complete and frontmatter is updated, will you then load, read entire file, then execute `{nextStepFile}` to begin project structure setup.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- All placeholders replaced in specified files
- Configuration data correctly applied
- Files modified without breaking structure
- Sidecar file updated with step 3 completion
- Clear report provided on modifications
- Menu presented and user input handled correctly

### ❌ SYSTEM FAILURE:

- Skipping placeholder replacements
- Modifying file structure incorrectly
- Not updating sidecar file
- Not reporting on modifications
- Proceeding to next step without 'C' selection
- Breaking file syntax or structure

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
