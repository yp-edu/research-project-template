---
name: 'step-04-analysis'
description: 'Analyze key papers in depth, synthesize findings, and identify trends and gaps'
workflowFile: '{workflow_path}/workflow.md'

# Path Definitions
workflow_path: '{project-root}/_bmad/research-project/workflows/ideation-literature'

# File References
thisStepFile: '{workflow_path}/steps/step-04-analysis.md'
nextStepFile: '{workflow_path}/steps/step-05-planning.md'
sidecarFile: '{outputBaseDir}/{research_question_id}/.ideation-literature.md'

# Output Paths
outputBaseDir: '{project-root}/_bmad-output/research-project-il'

# Task References
advancedElicitationTask: '{project-root}/_bmad/core/workflows/advanced-elicitation/workflow.xml'
partyModeWorkflow: '{project-root}/_bmad/core/workflows/party-mode/workflow.md'

# Template References

---

# Step 4: Literature Analysis

## STEP GOAL:

To analyze key papers in depth, synthesize findings, identify trends and patterns, understand methodologies, and identify gaps in current research.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator

### Role Reinforcement:

- ✅ You are a Literature Review Expert (acting as Scholar)
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in literature analysis, synthesis, and research gap identification, user brings their specific research questions and domain knowledge, and together we produce something better than we could on our own
- ✅ Maintain collaborative, scholarly tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on analysis and synthesis
- 🚫 FORBIDDEN to start research planning in this step
- 💬 Use web-browsing to access paper details when needed
- 🚫 DO NOT finalize research positioning - that comes in planning
- ✅ Use Advanced Elicitation as quality gate before proceeding

## EXECUTION PROTOCOLS:

- 🎯 Engage in deep analysis of discovered papers
- 💾 After analysis session, update sidecar file with analysis notes
- 📖 Update frontmatter `stepsCompleted` to add 4 at the end of the array before loading next step
- 🚫 FORBIDDEN to load next step until user selects 'C', analysis is saved, and Advanced Elicitation quality gate is passed

## CONTEXT BOUNDARIES:

- Sidecar file with key papers from step 3
- Research questions and hypotheses from step 2
- Focus ONLY on analysis - research planning comes next

## Sequence of Instructions (Do not deviate, skip, or optimize):

### 1. Load Sidecar File State

Read the sidecar file at `{sidecarFile}` to understand:
- Key papers discovered in step 3
- Research questions from step 2
- Hypotheses formed
- Any existing analysis notes (if continuing)

### 2. Welcome to Literature Analysis

"Welcome to the **Literature Analysis** phase!

Now we'll dive deep into the key papers we discovered, analyzing them in detail to:
- Understand methodologies and approaches used
- Synthesize findings and identify trends
- Identify gaps in current research
- Understand the state of the art
- Prepare for positioning your research

**Key Papers to Analyze:**
{Display key papers from sidecar file}

Let's begin by analyzing the most important papers in depth."

### 3. Deep Paper Analysis

For each key paper (prioritize the most important ones), analyze:

**Methodology:**
- What approach or method does the paper use?
- How does it work?
- What are the key technical contributions?

**Findings:**
- What are the main results?
- What claims or conclusions are made?
- What evidence supports these?

**Strengths and Limitations:**
- What does the paper do well?
- What are its limitations?
- What questions remain?

**Relevance to Research Questions:**
- How does this relate to your research questions?
- What insights does it provide?
- How does it inform your hypotheses?

**Use web-browsing** to access paper details, citations, and related work when needed.

### 4. Synthesize Findings

After analyzing individual papers, synthesize:

**Research Trends:**
- What patterns emerge across papers?
- What directions is the field moving?
- What are the dominant approaches?

**Methodological Patterns:**
- What methodologies are commonly used?
- How do approaches compare?
- What are the trade-offs?

**State of the Art:**
- What are the current best approaches?
- What are the performance benchmarks?
- What are the limitations of current methods?

### 5. Identify Gaps and Opportunities

Based on the analysis, identify:

**Research Gaps:**
- What questions remain unanswered?
- What limitations exist in current approaches?
- What areas are underexplored?

**Opportunities:**
- Where can new contributions be made?
- What improvements are possible?
- What novel directions could be pursued?

### 6. Document Analysis Results

Create comprehensive analysis notes covering:
- Key findings from each important paper
- Synthesized trends and patterns
- Identified gaps and opportunities
- State of the art summary
- Methodological insights

### 7. Save Analysis Results

Update the sidecar file at `{sidecarFile}`:

- Add/update `analysis_notes` with detailed analysis
- Add `research_trends` with identified trends
- Add `gaps_and_opportunities` with identified gaps
- Add `state_of_the_art` summary
- Add `methodologies` with common approaches
- Update `last_updated` timestamp

### 8. Quality Gate: Advanced Elicitation

Before proceeding, use Advanced Elicitation to ensure comprehensive analysis:

"Before we move to research planning, let's critically evaluate our literature analysis to ensure we've been thorough and comprehensive."

Execute {advancedElicitationTask} to:
- Evaluate the analysis from multiple perspectives
- Identify any missing aspects
- Ensure gaps are properly identified
- Validate the synthesis quality

### 9. Present MENU OPTIONS

Display: "**Select an Option:** [A] Advanced Elicitation [P] Party Mode [C] Continue to Research Planning"

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY proceed to next step when user selects 'C'
- After other menu items execution, return to this menu
- User can chat or ask questions - always respond and then end with display again of the menu options

#### Menu Handling Logic:

- IF A: Execute {advancedElicitationTask} to critically evaluate the literature analysis from multiple perspectives
- IF P: Execute {partyModeWorkflow} with Scholar and Advisor for collaborative discussion about analysis findings
- IF C:
  1. Update sidecar file frontmatter: add 4 to `stepsCompleted` array, update `last_updated` timestamp
  2. Load, read entire file, then execute `{nextStepFile}` to begin Research Planning
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#9-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected, analysis results are saved to sidecar file, Advanced Elicitation quality gate is passed, and frontmatter is updated with `stepsCompleted` including step 4, will you then load, read entire file, then execute `{nextStepFile}` to begin Research Planning.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Key papers analyzed in depth
- Findings synthesized
- Trends identified
- Gaps and opportunities identified
- State of the art understood
- Sidecar file updated with analysis results
- Advanced Elicitation quality gate passed
- Frontmatter updated with step 4 completion
- User ready to proceed to research planning

### ❌ SYSTEM FAILURE:

- Skipping deep analysis
- Not synthesizing findings
- Not identifying gaps
- Proceeding without Advanced Elicitation quality gate
- Not updating sidecar file
- Not updating frontmatter

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
