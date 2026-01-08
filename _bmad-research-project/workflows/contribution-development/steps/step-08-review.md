---
name: 'step-08-review'
description: 'Multi-agent review, validate completeness, and prepare for review-revision workflow'

# Path Definitions
workflow_path: '{project-root}/_bmad/research-project/workflows/contribution-development'

# File References
thisStepFile: '{workflow_path}/steps/step-08-review.md'
workflowFile: '{workflow_path}/workflow.md'
sidecarFile: '{workflow_path}/.contribution-development-state.md'

# Task References
advancedElicitationTask: '{project-root}/_bmad/core/workflows/advanced-elicitation/workflow.xml'

---

# Step 8: Review & Validation

## STEP GOAL:

To conduct a comprehensive multi-agent review, validate workflow completeness, update TODO files, and prepare for review-revision workflow.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator
- ✅ YOU MUST ALWAYS SPEAK OUTPUT In your Agent communication style with the config `{communication_language}`

### Role Reinforcement:

- ✅ You are a Research Contribution Development Specialist (coordinating Advisor + Engineer + Writer perspectives)
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

- Contribution designs (novelty, impact)
- Code implementations (quality, structure, reproducibility, integration)
- Experimental results (completeness, tracking, validation)
- Results analysis (completeness, insights, novelty assessment)
- Paper sections (quality, completeness, formatting, contribution clarity)

### 2. Validation Checklist

Validate against success criteria:

- ✅ Contributions are clearly novel and well-documented
- ✅ Experimental validation demonstrates contribution value
- ✅ Paper sections clearly communicate contributions and results
- ✅ Code follows best practices (PEP 8, reproducibility, interpretability tools)
- ✅ Results are reproducible and systematically tracked
- ✅ Integration with baselines achieved
- ✅ All documentation complete

### 3. Quality Review

Use Advanced Elicitation for critical review:

- Review overall workflow quality
- Identify any gaps or issues
- Validate completeness
- Ensure readiness for review-revision workflow
- Verify contributions are clearly communicated

### 4. Update TODO Files

Update all relevant TODO.md files:

- `docs/contribution-development/TODO.md`: Overall status
- Per-contribution TODO files: Completion status
- Design TODO: Review status
- Experiments TODO: Completion status
- Analysis TODO: Review status

### 5. Prepare Summary

Create workflow completion summary:

- What was accomplished
- Key outputs generated
- Contributions developed and validated
- Next steps for review-revision workflow
- Any items for future iterations

### 6. Mark Workflow Complete

Update sidecar file:

- Add 8 to `stepsCompleted` array
- Set `currentPhase: 'complete'`
- Set `workflowComplete: true`
- Add completion date
- Record final iteration count

### 7. Present Completion Message

Display completion message:

"**Contribution Development Workflow Complete!** ✅

We've successfully:
- Designed novel contributions with strategic guidance
- Implemented contributions following best practices
- Validated contributions through experiments
- Analyzed results and assessed contribution impact
- Written paper sections highlighting contributions and novelty

All outputs are ready:
- Code: `src/`, `scripts/`, `configs/contributions/`
- Documentation: `docs/contribution-development/`
- Paper sections: `latex/sections/` (methods, results, discussion)
- Results: `results/contribution-development/` (TensorBoard, W&B, JSON/CSV)

Contributions are validated, documented, and ready for review and revision workflow."

## CRITICAL STEP COMPLETION NOTE

This is the final step. When review is complete and sidecar file is updated, the workflow is finished. No next step to load.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Comprehensive review completed
- All outputs validated
- TODO files updated
- Workflow marked complete in sidecar file
- Ready for review-revision workflow

### ❌ SYSTEM FAILURE:

- Skipping review
- Not validating outputs
- Not updating TODO files
- Not marking workflow complete
- Proceeding without completion

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
