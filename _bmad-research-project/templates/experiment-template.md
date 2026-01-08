# Experiment Template

**Experiment ID:** [experiment-id]
**Date:** [YYYY-MM-DD]
**Researcher:** [Your name]
**Status:** [Planned / Running / Completed / Failed]

## Experiment Overview

**Objective:**
[Clear statement of what this experiment tests]

**Hypothesis:**
[What you expect to find]

**Research Question:**
[Specific question this experiment answers]

## Configuration

### Model/Method
- **Method Name:** [Name]
- **Version/Commit:** [Git commit hash or version]
- **Key Parameters:**
  - Parameter 1: [Value]
  - Parameter 2: [Value]
  - Parameter 3: [Value]

### Dataset
- **Dataset Name:** [Name]
- **Version:** [Version]
- **Split:** [Train/Val/Test sizes]
- **Preprocessing:** [Any preprocessing steps]

### Hyperparameters
```yaml
# Key hyperparameters
learning_rate: [value]
batch_size: [value]
epochs: [value]
seed: [value]
# Add more as needed
```

### Hardware
- **GPU:** [Type and count]
- **CPU:** [Type]
- **Memory:** [Amount]
- **Compute Time:** [Hours/minutes]

## Experimental Setup

### Baseline Comparisons
- [ ] Baseline 1: [Name]
- [ ] Baseline 2: [Name]
- [ ] Baseline 3: [Name]

### Evaluation Metrics
- [ ] Metric 1: [Name]
- [ ] Metric 2: [Name]
- [ ] Metric 3: [Name]

### Reproducibility Settings
- [ ] Random seed fixed: [Seed value]
- [ ] Deterministic operations enabled
- [ ] Version control commit recorded
- [ ] Environment captured (requirements.txt, conda env, etc.)
- [ ] Logging enabled

## Results

### Quantitative Results
| Metric | Our Method | Baseline 1 | Baseline 2 | Baseline 3 |
|--------|------------|------------|-------------|-------------|
| Metric 1 | [Value] | [Value] | [Value] | [Value] |
| Metric 2 | [Value] | [Value] | [Value] | [Value] |
| Metric 3 | [Value] | [Value] | [Value] | [Value] |

### Qualitative Observations
- [Observation 1]
- [Observation 2]
- [Observation 3]

### Statistical Significance
- **Number of runs:** [N]
- **Mean:** [Value]
- **Std Dev:** [Value]
- **Confidence Interval:** [Value]

## Analysis

### What Worked
- [Success 1]
- [Success 2]

### What Didn't Work
- [Failure 1]
- [Failure 2]

### Unexpected Findings
- [Finding 1]
- [Finding 2]

### Interpretability Insights
- [Insight 1 from interpretability tools]
- [Insight 2 from interpretability tools]

## Ablation Studies

### Component Analysis
| Component | Removed | Result | Impact |
|-----------|---------|--------|--------|
| Component 1 | Yes/No | [Metric value] | [High/Medium/Low] |
| Component 2 | Yes/No | [Metric value] | [High/Medium/Low] |

## Visualizations

**Figures Generated:**
- [ ] Figure 1: [Description] - Location: `results/figures/experiment-id/figure1.png`
- [ ] Figure 2: [Description] - Location: `results/figures/experiment-id/figure2.png`

## Files and Artifacts

**Output Location:** `results/experiments/experiment-id/`

**Key Files:**
- `config.yaml` - Experiment configuration
- `metrics.json` - Evaluation metrics
- `checkpoints/` - Model checkpoints
- `logs/` - Training logs
- `figures/` - Generated visualizations

## Next Steps

- [ ] Action 1
- [ ] Action 2
- [ ] Action 3

## Notes

[Any additional notes, observations, or thoughts]

---
*Template from Research Project Accelerator module*
