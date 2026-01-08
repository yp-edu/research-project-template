---
name: 'step-06-documentation'
description: 'Generate structured documents: research plan, literature review, and related work outline'
workflowFile: '{workflow_path}/workflow.md'

# Path Definitions
workflow_path: '{project-root}/_bmad/research-project/workflows/ideation-literature'

# File References
thisStepFile: '{workflow_path}/steps/step-06-documentation.md'
sidecarFile: '{outputBaseDir}/{research_question_id}/.ideation-literature.md'

# Output Paths
outputBaseDir: '{project-root}/_bmad-output/research-project-il'
researchPlanFile: '{outputBaseDir}/{research_question_id}/research-plan.md'
literatureReviewFile: '{outputBaseDir}/{research_question_id}/literature-review.md'
relatedWorkFile: '{outputBaseDir}/{research_question_id}/related-work.md'

# Task References
advancedElicitationTask: '{project-root}/_bmad/core/workflows/advanced-elicitation/workflow.xml'
partyModeWorkflow: '{project-root}/_bmad/core/workflows/party-mode/workflow.md'

# Template References

---

# Step 6: Documentation

## STEP GOAL:

To generate three structured documents (research plan, literature review, and related work outline) based on all information collected and decisions made throughout the workflow.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator

### Role Reinforcement:

- ✅ You are a Research Planning Specialist and Literature Review Expert (acting as Advisor + Scholar)
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in document generation, research planning, and literature review, user brings their specific research questions, domain knowledge, and research goals, and together we produce something better than we could on our own
- ✅ Maintain collaborative, scholarly tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on document generation
- 🚫 FORBIDDEN to modify research questions or planning in this step
- 💬 Generate structured documents following the format design
- 🚫 DO NOT skip required sections
- ✅ Ensure all documents are complete and well-formatted

## EXECUTION PROTOCOLS:

- 🎯 Generate three structured documents from sidecar file data
- 💾 Save all documents to output directory
- 📖 Update sidecar file frontmatter `stepsCompleted` to add 6 and mark workflow as complete
- 🚫 FORBIDDEN to mark complete until user selects 'C' and documents are generated

## CONTEXT BOUNDARIES:

- Sidecar file with all collected information from steps 1-5
- All research questions, hypotheses, papers, analysis, and planning data available
- Focus ONLY on document generation

## Sequence of Instructions (Do not deviate, skip, or optimize):

### 1. Load Sidecar File State

Read the sidecar file at `{sidecarFile}` to understand all collected information:
- Research question identifier
- Research questions (refined)
- Hypotheses
- Research objectives
- Key papers
- Analysis notes
- Research trends
- Gaps and opportunities
- State of the art
- Positioning statement
- Research approach
- Timeline and milestones
- Expected outcomes

### 2. Welcome to Documentation

"Welcome to the **Documentation** phase!

Now we'll generate three structured documents that capture everything we've accomplished:

1. **Research Plan** - Your research questions, hypotheses, objectives, approach, and timeline
2. **Literature Review** - Key papers, analysis, trends, gaps, and state of the art
3. **Related Work Outline** - Positioning statement, related approaches, and differentiation

All documents will be saved to: `_bmad-output/research-project-il/{research_question_id}/`

Let's generate these documents now."

### 3. Generate Research Plan Document

Create `{researchPlanFile}` with structured format:

**Required Sections:**
1. **Research Question Identifier** (metadata header with identifier, creation date, last updated)
2. **Research Questions** (primary question and sub-questions from sidecar file)
3. **Hypotheses** (testable hypotheses from sidecar file)
4. **Research Objectives** (specific goals from sidecar file)
5. **Methodology Approach** (high-level approach from planning step)
6. **Expected Outcomes** (what we expect to find/achieve from planning step)
7. **Timeline/Milestones** (key phases and deadlines from planning step)

**Optional Sections** (include if data available):
- Background/Context
- Scope and Limitations
- Success Criteria
- Risks and Mitigation

Use markdown formatting with `##` for main sections, `###` for subsections.

### 4. Generate Literature Review Document

Create `{literatureReviewFile}` with structured format:

**Required Sections:**
1. **Overview/Summary** (synthesize key findings from analysis)
2. **Key Papers** (detailed analysis of important papers from sidecar file)
3. **Research Trends** (patterns and directions from analysis)
4. **Gaps and Opportunities** (identified gaps from analysis)
5. **Methodologies** (common approaches from analysis)
6. **State of the Art** (current best approaches from analysis)

**Optional Sections** (include if data available):
- Historical Context
- Related Domains
- Emerging Areas
- Critical Analysis

Use markdown formatting with `##` for main sections, `###` for subsections.

### 5. Generate Related Work Outline

Create `{relatedWorkFile}` with structured format:

**Required Sections:**
1. **Positioning Statement** (where this work fits from planning step)
2. **Related Approaches** (similar work and how it differs from planning step)
3. **Building Upon** (foundational work this extends from planning step)
4. **Differentiation** (what makes this unique from planning step)

**Optional Sections** (include if helpful):
- Comparison Table
- Chronological Development
- Categorization by Approach

Use markdown formatting with `##` for main sections, `###` for subsections.

### 6. Review Generated Documents

Present summary of generated documents:

"I've generated all three documents:

✅ **Research Plan** - {researchPlanFile}
   - Research questions, hypotheses, objectives
   - Methodology approach and expected outcomes
   - Timeline and milestones

✅ **Literature Review** - {literatureReviewFile}
   - Key papers and analysis
   - Research trends and gaps
   - State of the art

✅ **Related Work Outline** - {relatedWorkFile}
   - Positioning statement
   - Related approaches and differentiation

All documents are saved and ready for review. Would you like to review any of them before we complete the workflow?"

### 7. Update Sidecar File and Master Index

Update the sidecar file at `{sidecarFile}`:

- Add 6 to `stepsCompleted` array
- Set `workflow_complete: true`
- Set `completion_date: [current date]`
- Update `last_updated` timestamp

Update the master index file at `{outputBaseDir}/.index.md`:

- Update status for this research question to "Complete"
- Update `last_updated` timestamp

### 8. Present MENU OPTIONS

Display: "**Select an Option:** [A] Advanced Elicitation [P] Party Mode [C] Complete Workflow"

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY mark workflow complete when user selects 'C'
- After other menu items execution, return to this menu
- User can chat or ask questions - always respond and then end with display again of the menu options

#### Menu Handling Logic:

- IF A: Execute {advancedElicitationTask} to critically evaluate the generated documents from multiple perspectives
- IF P: Execute {partyModeWorkflow} with Advisor and Scholar for collaborative review of documents
- IF C:
  1. Ensure all documents are saved
  2. Update sidecar file frontmatter: add 6 to `stepsCompleted` array, set `workflow_complete: true`, set `completion_date: [current date]`
  3. Update master index with completion status
  4. Display completion message
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#8-present-menu-options)

### 9. Workflow Completion Message

When user selects 'C' and workflow is complete:

"🎉 **Workflow Complete!**

Congratulations! You've successfully completed the Ideation & Literature workflow for research question '{research_question_id}'.

**Generated Documents:**
- Research Plan: `{researchPlanFile}`
- Literature Review: `{literatureReviewFile}`
- Related Work Outline: `{relatedWorkFile}`

**What You've Accomplished:**
✅ Explored and refined research questions
✅ Formulated testable hypotheses
✅ Discovered and analyzed key literature
✅ Identified research gaps and opportunities
✅ Positioned your work in the research landscape
✅ Planned your research approach and timeline
✅ Generated comprehensive documentation

**Next Steps:**
Your research foundation is now established! You can:
- Use these documents to guide your baseline development
- Reference the literature review when writing your paper
- Use the related work outline for your paper's related work section
- Continue with the baseline development workflow

All outputs are saved in: `_bmad-output/research-project-il/{research_question_id}/`

Thank you for using the Ideation & Literature workflow!"

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected, all three documents are generated and saved, sidecar file is updated with workflow completion, and master index is updated, will the workflow be considered complete.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- All three documents generated with required sections
- Documents follow structured format design
- Documents saved to correct location
- Sidecar file updated with completion status
- Master index updated
- Workflow marked as complete
- User informed of completion and next steps

### ❌ SYSTEM FAILURE:

- Not generating all required documents
- Missing required sections in documents
- Not saving documents to correct location
- Not updating sidecar file with completion
- Not updating master index
- Marking complete without user confirmation

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
