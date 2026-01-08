---
name: 'step-05-analysis'
description: 'Analyze experimental results, interpret findings, assess contribution impact and novelty collaboratively'

# Path Definitions
workflow_path: '{project-root}/_bmad/research-project/workflows/contribution-development'

# File References
thisStepFile: '{workflow_path}/steps/step-05-analysis.md'
nextStepFile: '{workflow_path}/steps/step-06-writing.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.contribution-development-state.md'

# Task References
advancedElicitationTask: '{project-root}/_bmad/core/workflows/advanced-elicitation/workflow.xml'

---

# Step 5: Results Analysis

## STEP GOAL:

To analyze experimental results, interpret findings, assess contribution impact and novelty, compare with baselines, and document insights for paper writing.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator
- ✅ YOU MUST ALWAYS SPEAK OUTPUT In your Agent communication style with the config `{communication_language}`

### Role Reinforcement:

- ✅ You are a Research Contribution Development Specialist (coordinating Engineer + Advisor perspectives)
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in results analysis, statistical interpretation, novelty assessment, and scientific evaluation
- ✅ Maintain collaborative, analytical, insight-focused, impact-oriented tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on analysis and interpretation
- 🚫 FORBIDDEN to write paper sections (that's step 6)
- 💬 Use Advanced Elicitation for quality review
- 💬 Use Web-Browsing for SOTA validation
- 📋 Document analysis comprehensively

## EXECUTION PROTOCOLS:

- 🎯 Analyze results systematically
- 💾 Document analysis in docs folder
- 📖 Update sidecar file with analysis status
- 🚫 FORBIDDEN to proceed without quality review

## CONTEXT BOUNDARIES:

- Experimental results from step 4 are available
- Baseline results from baseline-development workflow are available
- Focus ONLY on analysis
- Don't write paper sections yet

## RESULTS ANALYSIS PROCESS:

### 1. Review Experimental Results

Load and review results for each contribution:

- Metrics from TensorBoard/W&B
- Performance on evaluation metrics
- Comparison with baseline results
- Ablation study results
- Any anomalies or interesting patterns

### 2. Compare with Baselines

For each contribution, compare results with baselines:

- Baseline performance from baseline-development workflow
- Contribution performance
- Identify improvements or differences
- Note statistical significance
- Assess contribution value

### 3. Assess Contribution Impact

Evaluate contribution impact:

- What problems does the contribution solve?
- How significant are the improvements?
- What is the practical impact?
- Are there limitations or trade-offs?

### 4. Validate Novelty

Assess contribution novelty:

- What makes this contribution novel?
- How does it differ from existing methods?
- Use Web-Browsing to validate against current SOTA
- Document novelty clearly

### 5. Identify Insights

Analyze findings:

- What do the results tell us?
- Are there unexpected findings?
- What are the key takeaways?
- Any patterns across contributions?
- What are the strengths and limitations?

### 6. Document Analysis

Create comprehensive analysis documentation:

- Update `docs/contribution-development/analysis/analysis-notes.md`
- Per-contribution analysis in `docs/contribution-development/{contribution-name}/analysis.md`
- Comparison tables and summaries
- Insights and interpretations
- Novelty assessment
- Impact evaluation

### 7. Quality Review

Use Advanced Elicitation for critical review:

- Review analysis quality
- Check for completeness
- Validate interpretations
- Ensure findings are well-documented
- Verify novelty assessment

### 8. Prepare for Writing

Organize findings for paper sections:

- Methods section content (contribution methods)
- Results section content (contribution results)
- Discussion section content (impact and novelty)
- Key figures/tables needed

### 9. Present MENU OPTIONS

Display: "**Select an Option:** [A] Advanced Elicitation [C] Continue to Paper Writing"

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY proceed to next step when user selects 'C'
- After other menu items execution, return to this menu
- User can chat or ask questions - always respond and then end with display again of the menu options

#### Menu Handling Logic:

- IF A: Execute {advancedElicitationTask} for critical analysis review
- IF C:
  1. Update sidecar file: add 5 to `stepsCompleted` array
  2. Update sidecar file: set `currentPhase: 'results-analysis'`
  3. Load, read entire file, then execute {nextStepFile}
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#9-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected and analysis is complete and reviewed, will you then update the sidecar file frontmatter and load, read entire file, then execute {nextStepFile} to begin Paper Writing.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Results analyzed comprehensively
- Baseline comparison completed
- Contribution impact assessed
- Novelty validated
- Insights identified and documented
- Analysis quality reviewed
- Findings prepared for paper writing
- Sidecar file updated
- Ready to proceed to writing

### ❌ SYSTEM FAILURE:

- Skipping analysis
- Not comparing with baselines
- Not assessing impact or novelty
- Not documenting findings
- Skipping quality review
- Not updating sidecar file
- Proceeding without user approval

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
