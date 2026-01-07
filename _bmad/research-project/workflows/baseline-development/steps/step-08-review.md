---
name: 'step-08-review'
description: 'Multi-agent review, validate completeness, and prepare for next iteration'

# Path Definitions
workflow_path: '{project-root}/_bmad-output/bmb-creations/research-project/workflows/baseline-development'

# File References
thisStepFile: '{workflow_path}/steps/step-08-review.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.baseline-development-state.md'

# Task References
advancedElicitationTask: '{project-root}/_bmad/core/workflows/advanced-elicitation/workflow.xml'

---

# Step 8: Review & Validation

## STEP GOAL:

To conduct a comprehensive multi-agent review, validate workflow completeness, update TODO files, and prepare for next iteration if needed.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator
- ✅ YOU MUST ALWAYS SPEAK OUTPUT In your Agent communication style with the config `{communication_language}`

### Role Reinforcement:

- ✅ You are a Research Baseline Development Specialist (coordinating Engineer + Scholar + Writer perspectives)
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in quality assurance, validation, and workflow completion
- ✅ Maintain collaborative, review-focused, completion-oriented tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on review and validation
- 🚫 FORBIDDEN to start new work
- 💬 Use Advanced Elicitation for critical review
- 📋 Update all TODO files appropriately

## EXECUTION PROTOCOLS:

- 🎯 Conduct comprehensive review
- 💾 Update TODO files and documentation
- 📖 Update sidecar file marking workflow complete
- 🚫 FORBIDDEN to proceed without validation

## CONTEXT BOUNDARIES:

- All previous steps completed
- All outputs generated
- Focus ONLY on review and validation
- This is the final step

## REVIEW PROCESS:

### 1. Comprehensive Review

Review all workflow outputs:

- Code implementations (quality, structure, reproducibility)
- Experimental results (completeness, tracking)
- Analysis documentation (completeness, insights)
- Paper sections (quality, completeness, formatting)

### 2. Validation Checklist

Validate against success criteria:

- ✅ All baselines implemented
- ✅ Experiments executed
- ✅ Results analyzed
- ✅ Paper sections written
- ✅ Documentation complete
- ✅ Reproducibility ensured

### 3. Quality Review

Use Advanced Elicitation for critical review:

- Review overall workflow quality
- Identify any gaps or issues
- Validate completeness
- Ensure readiness for contribution development

### 4. Update TODO Files

Update all relevant TODO.md files:

- `docs/baseline-development/TODO.md`: Overall status
- Per-baseline TODO files: Implementation status
- Literature TODO: Review status
- Experiments TODO: Completion status

### 5. Prepare Summary

Create workflow completion summary:

- What was accomplished
- Key outputs generated
- Next steps for contribution development
- Any items for future iterations

### 6. Mark Workflow Complete

Update sidecar file:

- Add 8 to `stepsCompleted` array
- Set `currentPhase: 'complete'`
- Set `workflowComplete: true`
- Add completion date

### 7. Present Completion Message

Display completion message:

"**Baseline Development Workflow Complete!** ✅

We've successfully:
- [Summary of accomplishments]

All outputs are ready:
- Code: `src/`, `scripts/`, `configs/`
- Documentation: `docs/baseline-development/`
- Paper sections: `latex/sections/`
- Results: TensorBoard/W&B

You're now ready to proceed with contribution development, or you can run this workflow again to add more baselines."

## CRITICAL STEP COMPLETION NOTE

This is the final step. When review is complete and sidecar file is updated, the workflow is finished. No next step to load.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Comprehensive review completed
- All outputs validated
- TODO files updated
- Workflow marked complete in sidecar file
- Ready for next phase or iteration

### ❌ SYSTEM FAILURE:

- Skipping review
- Not validating outputs
- Not updating TODO files
- Not marking workflow complete
- Proceeding without completion

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
