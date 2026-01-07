---
name: 'step-07-writing'
description: 'Write initial paper sections (methods, results, related work) in LaTeX'

# Path Definitions
workflow_path: '{project-root}/_bmad-output/bmb-creations/research-project/workflows/baseline-development'

# File References
thisStepFile: '{workflow_path}/steps/step-07-writing.md'
nextStepFile: '{workflow_path}/steps/step-08-review.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.baseline-development-state.md'

# Task References
advancedElicitationTask: '{project-root}/_bmad/core/workflows/advanced-elicitation/workflow.xml'

---

# Step 7: Initial Writing

## STEP GOAL:

To write initial paper sections (methods, results, related work) in LaTeX format based on implementation, experiments, and analysis completed in previous steps.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator
- ✅ YOU MUST ALWAYS SPEAK OUTPUT In your Agent communication style with the config `{communication_language}`

### Role Reinforcement:

- ✅ You are a Research Baseline Development Specialist (acting as Writer agent)
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in scientific writing, LaTeX formatting, and paper structure
- ✅ Maintain collaborative, scholarly, writing-focused tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on writing paper sections
- 🚫 FORBIDDEN to modify code or run experiments
- 💬 Follow LaTeX template structure
- 📋 Write to `latex/sections/` directory

## EXECUTION PROTOCOLS:

- 🎯 Write sections systematically
- 💾 Save LaTeX files to appropriate locations
- 📖 Update sidecar file with writing status
- 🚫 FORBIDDEN to proceed without section review

## CONTEXT BOUNDARIES:

- Implementation details from step 4 are available
- Experimental results from step 5 are available
- Analysis findings from step 6 are available
- Focus ONLY on writing
- Don't modify code or experiments

## WRITING PROCESS:

### 1. Review Available Content

Review documentation and analysis:

- Implementation details from docs
- Experimental results and analysis
- SOTA comparison findings
- Key insights to highlight

### 2. Write Methods Section

Write methods section for baselines:

- File: `latex/sections/3-methods.tex`
- Describe baseline implementations
- Document experimental setup
- Include reproducibility details
- Follow LaTeX template structure

### 3. Write Results Section

Write results section:

- File: `latex/sections/4-experiments.tex`
- Present experimental results
- Include comparison with SOTA
- Add tables/figures as needed
- Highlight key findings

### 4. Organize Related Work

Update related work section:

- File: `latex/sections/6-related-work.tex`
- Organize based on baselines studied
- Reference key papers from literature review
- Position work in context

### 5. Review Sections

Use Advanced Elicitation for quality review:

- Review writing quality
- Check completeness
- Validate technical accuracy
- Ensure proper LaTeX formatting

### 6. Present MENU OPTIONS

Display: "**Select an Option:** [A] Advanced Elicitation [C] Continue to Review & Validation"

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY proceed to next step when user selects 'C'
- After other menu items execution, return to this menu
- User can chat or ask questions - always respond and then end with display again of the menu options

#### Menu Handling Logic:

- IF A: Execute {advancedElicitationTask} for critical writing review
- IF C:
  1. Update sidecar file: add 7 to `stepsCompleted` array
  2. Update sidecar file: set `currentPhase: 'initial-writing'`
  3. Load, read entire file, then execute {nextStepFile}
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#6-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected and paper sections are written and reviewed, will you then update the sidecar file frontmatter and load, read entire file, then execute {nextStepFile} to begin Review & Validation.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Methods section written
- Results section written
- Related work organized
- LaTeX formatting correct
- Sections reviewed for quality
- Sidecar file updated
- Ready to proceed to review

### ❌ SYSTEM FAILURE:

- Skipping section writing
- Not following LaTeX structure
- Not reviewing sections
- Not updating sidecar file
- Proceeding without user approval

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
