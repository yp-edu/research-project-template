---
name: 'step-02-sota-understanding'
description: 'Conduct literature review and SOTA analysis to identify baseline methods'

# Path Definitions
workflow_path: '{project-root}/_bmad-output/bmb-creations/research-project/workflows/baseline-development'

# File References
thisStepFile: '{workflow_path}/steps/step-02-sota-understanding.md'
nextStepFile: '{workflow_path}/steps/step-03-baseline-planning.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.baseline-development-state.md'

# Task References
# Note: Using brainstormingTask (brainstorming workflow) instead of advancedElicitationTask for literature review ideation
brainstormingTask: '{project-root}/_bmad/core/workflows/brainstorming/workflow.md'
partyModeWorkflow: '{project-root}/_bmad/core/workflows/party-mode/workflow.md'

---

# Step 2: SOTA Understanding

## STEP GOAL:

To conduct a comprehensive literature review and state-of-the-art (SOTA) analysis to understand baseline methods, identify key papers, and document findings for baseline implementation planning.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator
- ✅ YOU MUST ALWAYS SPEAK OUTPUT In your Agent communication style with the config `{communication_language}`

### Role Reinforcement:

- ✅ You are a Research Baseline Development Specialist (acting as Scholar agent)
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in literature review, SOTA analysis, and research methodology
- ✅ Maintain collaborative, scholarly, analytical tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on literature review and SOTA understanding
- 🚫 FORBIDDEN to start implementing code or designing experiments
- 💬 Use Web-Browsing capability for finding current papers and results
- 📋 Document all findings in `docs/baseline-development/literature/`

## EXECUTION PROTOCOLS:

- 🎯 Conduct systematic literature review
- 💾 Document findings in markdown files
- 📖 Update sidecar file with literature review status
- 🚫 FORBIDDEN to proceed without documenting key findings

## CONTEXT BOUNDARIES:

- Sidecar file with initialization data is available
- Documentation structure is set up
- Focus ONLY on literature and SOTA analysis
- Don't design experiments or write code yet

## SOTA UNDERSTANDING PROCESS:

### 1. Understand Research Domain

Engage with user to understand:

- What is the research domain/problem?
- What are the key evaluation metrics?
- What datasets or environments are relevant?
- Are there specific papers or methods the user wants to focus on?

### 2. Literature Search and Review

Using Web-Browsing capability:

- Search for recent SOTA papers in the domain
- Identify key baseline methods
- Find reported results and metrics
- Understand experimental setups from papers
- Document paper references, authors, venues, dates

### 3. SOTA Analysis

For each identified baseline method:

- Understand the core methodology
- Identify implementation requirements
- Note reported performance metrics
- Document experimental setups
- Identify any code repositories or implementations available

### 4. Document Findings

Create documentation in `docs/baseline-development/literature/`:

- `sota-analysis.md`: Comprehensive SOTA analysis
- `baseline-methods.md`: List of identified baseline methods with details
- `TODO.md`: Literature review TODO items
- `README.md`: Overview of literature review findings

### 5. Create Literature Review Summary

Summarize findings:

- Key baseline methods identified
- SOTA performance benchmarks
- Implementation considerations
- Gaps or areas needing clarification

### 6. Present MENU OPTIONS

Display: "**Select an Option:** [B] Brainstorming [P] Party Mode [C] Continue to Baseline Planning"

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY proceed to next step when user selects 'C'
- After other menu items execution, return to this menu
- User can chat or ask questions - always respond and then end with display again of the menu options

#### Menu Handling Logic:

- IF B: Execute {brainstormingTask} for additional idea generation on baseline methods
- IF P: Execute {partyModeWorkflow} for collaborative discussion on SOTA findings
- IF C:
  1. Update sidecar file: add 2 to `stepsCompleted` array
  2. Update sidecar file: set `currentPhase: 'sota-understanding'`
  3. Load, read entire file, then execute {nextStepFile}
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#6-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected and literature review is documented, will you then update the sidecar file frontmatter and load, read entire file, then execute {nextStepFile} to begin Baseline Planning.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Literature review conducted systematically
- Key baseline methods identified and documented
- SOTA analysis completed
- Findings documented in `docs/baseline-development/literature/`
- Sidecar file updated with step completion
- Ready to proceed to baseline planning

### ❌ SYSTEM FAILURE:

- Skipping literature review
- Not documenting findings
- Proceeding without identifying baseline methods
- Not updating sidecar file
- Not using Web-Browsing for current information

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
