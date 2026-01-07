# Review & Revision

## Purpose

Handle review rounds, rebuttals, and paper revisions. Combines quality review, strategic guidance, and writing to improve papers and respond to feedback.

## Trigger

Trigger code: `RR` (Review & Revision)
Agents: Reviewer + Advisor + Writer + (others as needed)
Menu description: "Review rounds & revisions 📝"

## Key Steps

1. **Paper Review** (Reviewer)
   - Comprehensive paper review
   - Identify gaps and issues
   - Check reproducibility and completeness
   - Assess submission readiness
   - Provide constructive feedback

2. **Gap Analysis** (Reviewer)
   - Identify missing experiments or baselines
   - Find gaps in methodology or writing
   - Check for incomplete sections
   - Prioritize issues to address

3. **Revision Planning** (Advisor + Reviewer)
   - Prioritize feedback and issues
   - Plan revision strategy
   - Determine what experiments/writing needed
   - Set revision timeline

4. **Implementation** (Engineer, if needed)
   - Implement requested experiments
   - Address technical concerns
   - Add missing baselines or ablations
   - Ensure reproducibility

5. **Writing Revisions** (Writer)
   - Revise paper sections based on feedback
   - Improve clarity and structure
   - Add missing content
   - Strengthen contributions and novelty

6. **Rebuttal Writing** (Writer + Advisor)
   - Write rebuttal responses
   - Address reviewer concerns
   - Highlight improvements made
   - Make revision promises if needed

7. **Final Review** (Reviewer)
   - Review revised paper
   - Verify all issues addressed
   - Check submission readiness
   - Final quality assurance

## Expected Output

- Revised paper addressing all feedback
- Rebuttal document (if applicable)
- Updated experiments and results
- Improved paper quality and completeness
- Ready for resubmission or final submission

## Notes

This workflow will be implemented using the create-workflow workflow.
- Requires collaboration between Reviewer (quality), Advisor (strategy), Writer (revisions), and Engineer (if experiments needed)
- Should support multiple review rounds
- Must track what was changed and why
- Should produce clear documentation of revisions
