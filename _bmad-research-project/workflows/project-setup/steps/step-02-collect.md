---
name: 'step-02-collect'
description: 'Gather all required project configuration information through collaborative conversation'

# Path Definitions
workflow_path: '{project-root}/_bmad/research-project/workflows/project-setup'

# File References
thisStepFile: '{workflow_path}/steps/step-02-collect.md'
nextStepFile: '{workflow_path}/steps/step-03-customize.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.project-setup-state.md'

# Task References
advancedElicitationTask: '{project-root}/_bmad/core/workflows/advanced-elicitation/workflow.xml'
partyModeWorkflow: '{project-root}/_bmad/core/workflows/party-mode/workflow.md'
---

# Step 2: Configuration Collection

## STEP GOAL:

To gather all required project configuration information (author name, lab, email, project description, project name) through collaborative conversation, using module configuration defaults when available.

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
- ✅ You bring expertise in project configuration and template customization, user brings their specific project requirements and preferences, and together we produce something better than we could on our own
- ✅ Maintain collaborative, helpful tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on collecting configuration information
- 🚫 FORBIDDEN to modify project files in this step
- 💬 Ask questions conversationally, not like a form
- 🚫 DO NOT skip any required field - each is needed for proper setup
- ✅ Use module config defaults when available

## EXECUTION PROTOCOLS:

- 🎯 Engage in natural conversation to gather configuration information
- 💾 After collecting all information, update sidecar file
- 📖 Update frontmatter `stepsCompleted` to add 2 at the end of the array before loading next step
- 🚫 FORBIDDEN to load next step until user selects 'C' and data is saved

## CONTEXT BOUNDARIES:

- Sidecar file and frontmatter are already loaded from initialization
- Module configuration defaults are available from step 1
- Focus ONLY on collecting configuration data
- Don't modify project files in this step
- This is about gathering information, not applying it

## CONFIGURATION COLLECTION PROCESS:

### 1. Load Current State

Read the sidecar file `{sidecarFile}` to get:
- Module configuration defaults (module_author_name, module_author_lab, module_author_email, module_project_description)
- Any previously collected data

### 2. Author Name Collection

Ask conversationally:

"I need your name for the project configuration. This will replace `<NAME>` placeholders throughout the project.

[If module_author_name exists] I see your module configuration has: '{module_author_name}'. Would you like to use this, or provide a different name?"

- If user confirms default: Use module_author_name
- If user provides different: Use provided name
- Validate: Name should not be empty

### 3. Lab/Institution Collection (Optional)

Ask conversationally:

"Would you like to include your lab or institution name? This is optional but will replace `<LAB>` placeholders if provided.

[If module_author_lab exists] I see your module configuration has: '{module_author_lab}'. Would you like to use this, or provide a different lab/institution name?"

- If user confirms default: Use module_author_lab
- If user provides different: Use provided name
- If user declines: Leave empty (will skip lab replacements)

### 4. Email Collection

Ask conversationally:

"I need your email address for the project configuration. This will replace `<EMAIL>` placeholders throughout the project.

[If module_author_email exists] I see your module configuration has: '{module_author_email}'. Would you like to use this, or provide a different email?"

- If user confirms default: Use module_author_email
- If user provides different: Use provided email
- Validate: Email should not be empty and should be a valid email format

### 5. Project Description Collection

Ask conversationally:

"Please describe your research project focus. This helps customize templates and guidance. For example: 'Neural network interpretability in MARL' or 'Computer vision for medical imaging'.

[If module_project_description exists] I see your module configuration has: '{module_project_description}'. Would you like to use this, or provide a different description?"

- If user confirms default: Use module_project_description
- If user provides different: Use provided description
- Validate: Description should not be empty

### 6. Project Name Confirmation

Ask conversationally:

"Finally, what would you like to name this project? This will be used for the Python package name and project identification.

[Current default] The default is 'research-project-template'. Would you like to keep this name, or use a different one?"

- If user confirms default: Use 'research-project-template'
- If user provides different: Use provided name
- Validate: Project name should be a valid identifier (alphanumeric, hyphens, underscores)

### 7. Summary and Confirmation

Present a summary of all collected information:

"Let me confirm what we've collected:

- **Author Name:** {author_name}
- **Lab/Institution:** {author_lab or 'Not provided'}
- **Email:** {author_email}
- **Project Description:** {project_description}
- **Project Name:** {project_name}

Does this look correct? Would you like to change anything?"

### 8. Save Configuration Data

After user confirms, update the sidecar file `{sidecarFile}`:

```yaml
---
stepsCompleted: [1, 2]
lastStep: 'collect'
date: [original date]
user_name: {user_name}

# Configuration data
author_name: '{collected author name}'
author_lab: '{collected lab or empty}'
author_email: '{collected email}'
project_description: '{collected description}'
project_name: '{collected project name}'

# Module config defaults (preserved)
module_author_name: '{module value}'
module_author_lab: '{module value}'
module_author_email: '{module value}'
module_project_description: '{module value}'
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
- IF C: Update sidecar file with collected data, update frontmatter `stepsCompleted: [1, 2]`, then load, read entire file, then execute {nextStepFile}
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#9-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected and configuration data is saved to sidecar file and frontmatter is updated, will you then load, read entire file, then execute `{nextStepFile}` to begin template customization.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- All required configuration data collected (author_name, author_email, project_description, project_name)
- Optional data collected if provided (author_lab)
- Data validated (non-empty required fields, valid email format, valid project name)
- Sidecar file updated with all collected data
- Frontmatter updated with step 2 completion
- User confirmed data accuracy
- Menu presented and user input handled correctly

### ❌ SYSTEM FAILURE:

- Proceeding without collecting all required fields
- Not validating required fields
- Not updating sidecar file with collected data
- Not updating frontmatter before proceeding
- Proceeding to next step without 'C' selection
- Modifying project files in this step

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
