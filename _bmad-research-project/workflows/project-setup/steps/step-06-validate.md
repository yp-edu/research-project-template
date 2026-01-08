---
name: 'step-06-validate'
description: 'Verify all setup is complete and correct using Advanced Elicitation for critical review'

# Path Definitions
workflow_path: '{project-root}/_bmad/research-project/workflows/project-setup'

# File References
thisStepFile: '{workflow_path}/steps/step-06-validate.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.project-setup-state.md'

# Task References
advancedElicitationTask: '{project-root}/_bmad/core/workflows/advanced-elicitation/workflow.xml'
---

# Step 6: Validation

## STEP GOAL:

To verify all setup is complete and correct by using Advanced Elicitation to critically review the setup, verify all placeholders are replaced, confirm project structure is correct, and provide a completion summary.

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
- ✅ You bring expertise in quality assurance and validation, user brings their specific project requirements, and together we produce something better than we could on our own
- ✅ Maintain collaborative, helpful tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on validation and verification
- 🚫 FORBIDDEN to modify files unless issues are found
- 💬 Use Advanced Elicitation for critical review
- ✅ Provide comprehensive completion summary

## EXECUTION PROTOCOLS:

- 🎯 Perform comprehensive validation checks
- 💾 Use Advanced Elicitation for critical review
- 📖 Update frontmatter `stepsCompleted` to add 6 at the end of the array and mark workflow complete
- 🚫 FORBIDDEN to mark complete until all validations pass

## CONTEXT BOUNDARIES:

- All previous steps completed
- Sidecar file with configuration data is available
- Focus ONLY on validation
- This is the final step

## VALIDATION PROCESS:

### 1. Load Configuration Data

Read the sidecar file `{sidecarFile}` to get all configuration data for validation.

### 2. Verify Placeholder Replacement

Search for remaining placeholders in key files:
- Search `{project-root}/README.md` for: `<NAME>`, `<LAB>`, `<EMAIL>`
- Search `{project-root}/latex/main.tex` for placeholders
- Search `{project-root}/pyproject.toml` for placeholders
- Report any remaining placeholders found

**Success Criteria:** Zero placeholder instances remaining

### 3. Verify Project Structure

Confirm all required directories exist:
- `src/` - Source code directory
- `scripts/` - Scripts directory
- `latex/` - LaTeX files directory
- `results/` - Results/output directory
- `tests/` - Tests directory (if applicable)

**Success Criteria:** All required directories exist

### 4. Verify .gitignore Configuration

Check that `results/` is properly gitignored:
- Read `{project-root}/.gitignore`
- Verify `results/` is listed
- Verify other common patterns are present

**Success Criteria:** results/ directory is gitignored

### 5. Verify Git Repository

Check git repository status:
- If git was initialized, verify `.git/` directory exists
- If not initialized, confirm user is aware of manual steps

**Success Criteria:** Git initialized or instructions provided

### 6. Use Advanced Elicitation for Critical Review

Execute `{advancedElicitationTask}` to critically review the setup:

"Let me use Advanced Elicitation to critically review the project setup from multiple perspectives and identify any potential issues or improvements."

After Advanced Elicitation completes, review the findings and address any critical issues.

### 7. Compile Validation Report

Create a comprehensive validation report:

"**Validation Complete!**

**Placeholder Replacement:**
- ✅ All `<NAME>` placeholders replaced
- ✅ All `<EMAIL>` placeholders replaced
- ✅ All `<LAB>` placeholders replaced (or skipped if not provided)

**Project Structure:**
- ✅ All required directories exist
- ✅ results/ directory properly gitignored

**Configuration:**
- ✅ Python package configured
- ✅ Project-specific settings verified
- ✅ Git repository: {status}

**Advanced Elicitation Review:**
- {Summary of findings from Advanced Elicitation}

**Overall Status:** ✅ **Project setup is complete and ready for research work!**"

### 8. Update Sidecar File (Mark Complete)

Update the sidecar file `{sidecarFile}` to mark workflow complete:

```yaml
---
stepsCompleted: [1, 2, 3, 4, 5, 6]
lastStep: 'validate'
workflowComplete: true
completedDate: [current date]
# ... rest of frontmatter preserved
---
```

### 9. Present Completion Summary

Provide final completion message:

"🎉 **Project Setup Complete!**

Your research project has been successfully configured:

- All placeholders replaced with your information
- Project structure verified and ready
- Configuration complete
- Ready for research work

You can now begin working on your research project. All files are configured and the project structure is in place.

Thank you for using the Project Setup workflow!"

### 10. Present MENU OPTIONS

Display: **Select an Option:** [A] Advanced Elicitation [C] Complete

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY mark workflow complete when user selects 'C'
- After other menu items execution, return to this menu
- User can chat or ask questions - always respond and then end with display again of the menu options
- Use menu handling logic section below

#### Menu Handling Logic:

- IF A: Execute {advancedElicitationTask}, then return to menu
- IF C: Update sidecar file frontmatter `stepsCompleted: [1, 2, 3, 4, 5, 6]` and `workflowComplete: true`, then end workflow
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#10-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected and all validations pass and frontmatter is updated with workflow completion, will the workflow be considered complete. This is the final step.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- All placeholders verified as replaced
- Project structure verified
- .gitignore verified
- Advanced Elicitation review completed
- Comprehensive validation report provided
- Sidecar file updated with workflow completion
- Completion summary provided
- Menu presented and user input handled correctly

### ❌ SYSTEM FAILURE:

- Not verifying all placeholders
- Not checking project structure
- Not using Advanced Elicitation for review
- Not updating sidecar file with completion
- Marking complete without validation
- Proceeding without user confirmation

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
