---
name: paper-review-contribution
description: "Evaluate novelty and contribution clarity (are contributions stated and supported?)."
---

# Paper Review: Contribution

## When to Use

- You are running a structured review pass (e.g. **review-paper** command) and need to assess contribution clarity and novelty.
- The user wants to know if the paper clearly states and supports its contributions.

## Instructions

- **Stated contributions**: List what the paper claims as contributions (e.g. from abstract or introduction). Check that each is clearly articulated (not vague).
- **Support**: For each stated contribution, check that there is evidence in the paper (method section, experiments, tables). Flag any contribution with no or weak support. Flag contributions that are stated but not statistically supported (e.g., "improves over X" with no variance or significance).
- **Novelty**: Note whether the paper clearly differentiates from prior work (e.g. in related work or contribution list). Flag any contribution that is not clearly novel.
- **Really question substantive contribution**: Would a top-tier reviewer see this as incremental? Is the novelty clearly articulated and defensible? Does the paper address generalization (or its limits)? Probe: "What is the minimal publishable unit here? What would make this a strong vs weak contribution?"
- Output: A short assessment: stated contributions, support status (supported / partially supported / unsupported), and novelty clarity. Point to sections or experiments for each.
