---
name: 'step-02-contribution-design'
description: 'Collaboratively design novel contributions with Advisor and Engineer, assess novelty and impact, plan experimental validation'

# Path Definitions
workflow_path: '{project-root}/_bmad/research-project/workflows/contribution-development'

# File References
thisStepFile: '{workflow_path}/steps/step-02-contribution-design.md'
nextStepFile: '{workflow_path}/steps/step-03-implementation.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.contribution-development-state.md'

# Task References
brainstormingTask: '{project-root}/_bmad/core/workflows/brainstorming/workflow.md'
partyModeWorkflow: '{project-root}/_bmad/core/workflows/party-mode/workflow.md'

---

# Step 2: Contribution Design

## STEP GOAL:

To collaboratively design novel research contributions with Advisor and Engineer agents, assess contribution novelty and impact, and plan experimental validation strategies.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator
- ✅ YOU MUST ALWAYS SPEAK OUTPUT In your Agent communication style with the config `{communication_language}`

### Role Reinforcement:

- ✅ You are a Research Contribution Development Specialist (coordinating Advisor + Engineer perspectives)
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in contribution design, novelty assessment, and experimental planning
- ✅ Maintain collaborative, strategic, innovation-focused tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on contribution design and novelty assessment
- 🚫 FORBIDDEN to start implementing code
- 💬 Use Party-Mode for collaborative ideation between Advisor and Engineer
- 💬 Use Brainstorming for generating novel contribution ideas
- 💬 Use Web-Browsing for literature review and SOTA validation
- 📋 Document all design decisions in `docs/contribution-development/design/`

## EXECUTION PROTOCOLS:

- 🎯 Guide collaborative contribution design
- 💾 Document contribution designs and novelty assessments
- 📖 Update sidecar file with contribution designs
- 🚫 FORBIDDEN to proceed without contribution design approval

## CONTEXT BOUNDARIES:

- Sidecar file with initialization data is available
- Documentation structure is set up
- Focus ONLY on design and planning
- Don't implement code yet
- Experimental validation planning is appropriate

## CONTRIBUTION DESIGN PROCESS:

### 1. Understand Research Context

Engage with user to understand:

- What are the research goals and objectives?
- What baseline implementations exist (from baseline-development workflow)?
- What are the key problems or limitations to address?
- What domain constraints or requirements exist?
- Are there initial contribution ideas or hypotheses?

### 2. Collaborative Contribution Ideation

Using Party-Mode to engage Advisor and Engineer:

- Facilitate collaborative discussion on potential contributions
- Explore novel methods or approaches
- Consider different angles and perspectives
- Use Brainstorming techniques for idea generation
- Synthesize ideas from both Advisor (strategy) and Engineer (implementation) perspectives

### 3. Contribution Design and Specification

For each contribution idea:

- Clearly define the contribution
- Specify the novel aspects
- Identify what makes it different from existing methods
- Plan how it addresses identified problems
- Consider implementation feasibility

### 4. Novelty and Impact Assessment

Assess each contribution:

- What makes this contribution novel?
- How does it differ from SOTA methods?
- What is the expected impact?
- What problems does it solve?
- How significant is the contribution?

### 5. Experimental Validation Planning

For each contribution:

- Plan experiments to validate the contribution
- Identify key metrics to measure
- Design ablation studies if applicable
- Plan comparison with baselines
- Consider resource requirements

### 6. Document Contribution Design

Create documentation in `docs/contribution-development/design/`:

- `contribution-design.md`: Comprehensive contribution design document
- `novelty-assessment.md`: Novelty and impact assessment
- `experimental-plan.md`: Experimental validation plan
- `TODO.md`: Design TODO items
- `README.md`: Overview of contribution designs

For each contribution, create per-contribution folder:
- `docs/contribution-development/{contribution-name}/design.md`

### 7. Update Sidecar File

Update sidecar file with:
- List of contributions being developed
- Current phase: 'contribution-design'
- Design decisions and priorities

### 8. Present MENU OPTIONS

Display: "**Select an Option:** [B] Brainstorming [P] Party Mode [C] Continue to Implementation"

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY proceed to next step when user selects 'C'
- After other menu items execution, return to this menu
- User can chat or ask questions - always respond and then end with display again of the menu options

#### Menu Handling Logic:

- IF B: Execute {brainstormingTask} for additional contribution idea generation
- IF P: Execute {partyModeWorkflow} for collaborative discussion on contribution designs (Advisor + Engineer)
- IF C:
  1. Update sidecar file: add 2 to `stepsCompleted` array
  2. Update sidecar file: set `currentPhase: 'contribution-design'`
  3. Load, read entire file, then execute {nextStepFile}
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#8-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected and contribution design is documented, will you then update the sidecar file frontmatter and load, read entire file, then execute {nextStepFile} to begin Implementation.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Contribution designs created collaboratively
- Novelty and impact assessed
- Experimental validation planned
- Designs documented in `docs/contribution-development/design/`
- Sidecar file updated with step completion
- Ready to proceed to implementation

### ❌ SYSTEM FAILURE:

- Skipping contribution design
- Not assessing novelty
- Not planning experimental validation
- Not documenting designs
- Not updating sidecar file
- Not using collaborative tools (Party-Mode, Brainstorming)

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
