---
name: 'step-05-configure'
description: 'Complete initial project configuration including Python package name and git initialization'

# Path Definitions
workflow_path: '{project-root}/_bmad/research-project/workflows/project-setup'

# File References
thisStepFile: '{workflow_path}/steps/step-05-configure.md'
nextStepFile: '{workflow_path}/steps/step-06-validate.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.project-setup-state.md'
---

# Step 5: Initial Configuration

## STEP GOAL:

To complete initial project configuration by updating Python package name (if project name changed), configuring project-specific settings, and initializing git repository if not present.

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
- ✅ You bring expertise in project configuration and version control, user brings their specific project requirements, and together we produce something better than we could on our own
- ✅ Maintain collaborative, helpful tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on final configuration tasks
- 🚫 FORBIDDEN to modify placeholder replacements (already done)
- 💬 Report clearly on configuration changes
- ✅ Handle git initialization gracefully (optional if tools unavailable)

## EXECUTION PROTOCOLS:

- 🎯 Load configuration data from sidecar file
- 💾 Update Python package configuration if needed
- 📖 Update frontmatter `stepsCompleted` to add 5 at the end of the array before loading next step
- 🚫 FORBIDDEN to load next step until user selects 'C' and configuration is complete

## CONTEXT BOUNDARIES:

- Sidecar file with configuration data is available
- Placeholder replacements already completed
- Focus ONLY on final configuration tasks
- Git initialization is optional

## CONFIGURATION PROCESS:

### 1. Load Configuration Data

Read the sidecar file `{sidecarFile}` to get:
- `project_name`: Current project name
- Other configuration data as needed

### 2. Update Python Package Name (If Changed)

If `project_name` differs from 'research-project-template':

- Read `{project-root}/pyproject.toml`
- Update package name fields if needed
- Update any references in `src/` directory structure if needed
- Report on changes made

### 3. Configure Project-Specific Settings

Review and update as needed:
- Check `pyproject.toml` for any project-specific settings
- Verify package metadata is correct
- Ensure dependencies are properly specified

### 4. Initialize Git Repository (If Not Present)

Check if git repository exists:
- Look for `{project-root}/.git/` directory
- If not present:
  - Suggest manual git initialization
  - Provide instructions:
    - `git init` - Initialize git repository
    - `git add .` - Stage all files
    - `git commit -m "Initial project setup"` - Create initial commit
  - Note: User can run these commands manually when ready

### 5. Create Optional Configuration Summary

Optionally create a configuration summary document at `{project-root}/SETUP-SUMMARY.md`:

```markdown
# Project Setup Summary

**Date:** [current date]
**Project Name:** {project_name}
**Author:** {author_name}
**Email:** {author_email}
**Lab/Institution:** {author_lab or 'Not provided'}
**Project Description:** {project_description}

## Configuration Completed

- ✅ Placeholders replaced in all project files
- ✅ Project structure verified and configured
- ✅ Python package configured
- ✅ Git repository initialized (if applicable)

## Next Steps

Your project is now ready for research work!
```

### 6. Report on Configuration

After completing configuration, provide a summary:

"I've completed the initial project configuration:

**Configuration Updates:**
- ✅ Python package name: {project_name}
- ✅ Project-specific settings configured
- ✅ Git repository: Manual initialization instructions provided (run `git init` when ready)

**Optional Summary:**
- {Created SETUP-SUMMARY.md or 'Not created'}

Your project configuration is complete!"

### 7. Update Sidecar File

Update the sidecar file `{sidecarFile}` to mark this step complete:

```yaml
---
stepsCompleted: [1, 2, 3, 4, 5]
lastStep: 'configure'
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

- IF C: Update sidecar file frontmatter `stepsCompleted: [1, 2, 3, 4, 5]`, then load, read entire file, then execute {nextStepFile}
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#8-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected and configuration is complete and frontmatter is updated, will you then load, read entire file, then execute `{nextStepFile}` to begin validation.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Python package name updated if needed
- Project-specific settings configured
- Git initialization instructions provided
- Optional summary document created
- Sidecar file updated with step 5 completion
- Clear report provided on configuration
- Menu presented and user input handled correctly

### ❌ SYSTEM FAILURE:

- Not updating Python package name when needed
- Not providing git initialization instructions
- Not updating sidecar file
- Proceeding to next step without 'C' selection

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
