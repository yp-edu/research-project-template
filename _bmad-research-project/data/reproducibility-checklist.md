# Reproducibility Checklist

Comprehensive checklist for ensuring research reproducibility.

## Code Reproducibility

### Version Control
- [ ] Code is in a Git repository
- [ ] Repository is publicly accessible (or access instructions provided)
- [ ] README.md explains how to run the code
- [ ] Requirements/dependencies are documented
- [ ] Environment setup instructions provided

### Code Quality
- [ ] Code is well-commented
- [ ] Functions have docstrings
- [ ] Code follows style guidelines (PEP 8 for Python)
- [ ] No hardcoded paths (use relative paths or config files)
- [ ] No commented-out experimental code left in

### Configuration
- [ ] Hyperparameters are in config files (not hardcoded)
- [ ] Config files are version-controlled
- [ ] Default config reproduces main results
- [ ] Config files are well-documented

## Experimental Reproducibility

### Random Seeds
- [ ] Random seeds are fixed and documented
- [ ] Seeds are set for all random operations:
  - [ ] Python random
  - [ ] NumPy random
  - [ ] PyTorch/TensorFlow random
  - [ ] CUDA random (if applicable)
- [ ] Seed values are reported in paper

### Determinism
- [ ] Deterministic operations enabled where possible
- [ ] Non-deterministic operations documented
- [ ] Impact of non-determinism assessed

### Data
- [ ] Dataset version is specified
- [ ] Data preprocessing steps are documented
- [ ] Data splits are fixed and reproducible
- [ ] Data access instructions provided (if not public)

### Environment
- [ ] Python version specified
- [ ] Package versions specified (requirements.txt, environment.yml)
- [ ] CUDA/cuDNN versions specified (if applicable)
- [ ] Operating system documented

## Results Reproducibility

### Metrics
- [ ] Evaluation metrics clearly defined
- [ ] Metric implementations are correct
- [ ] Metrics are computed consistently across experiments
- [ ] Statistical significance reported (if applicable)

### Baselines
- [ ] Baselines are properly implemented
- [ ] Baseline hyperparameters are reported
- [ ] Baseline results are reproducible
- [ ] Baseline code is available or cited

### Reporting
- [ ] Results are reported with appropriate precision
- [ ] Confidence intervals or standard deviations reported
- [ ] Number of runs/repetitions specified
- [ ] All reported results are reproducible

## Documentation

### Paper Documentation
- [ ] Method is clearly described
- [ ] Hyperparameters are reported
- [ ] Experimental setup is detailed
- [ ] Limitations are discussed

### Code Documentation
- [ ] README explains project structure
- [ ] Installation instructions provided
- [ ] Usage examples provided
- [ ] API documentation (if applicable)

### Data Documentation
- [ ] Dataset description provided
- [ ] Data collection process documented
- [ ] Data preprocessing explained
- [ ] Data licenses/restrictions noted

## Artifacts

### Checkpoints
- [ ] Model checkpoints are saved
- [ ] Checkpoints are accessible
- [ ] Checkpoint loading instructions provided

### Logs
- [ ] Training logs are saved
- [ ] Log format is documented
- [ ] Logs can be used to verify training

### Results
- [ ] Results files are saved
- [ ] Results format is documented
- [ ] Results can be regenerated from code

## Verification

### Self-Verification
- [ ] Code runs on clean environment
- [ ] Results match paper claims
- [ ] All experiments can be reproduced
- [ ] Documentation is accurate

### External Verification
- [ ] Code reviewed by colleague
- [ ] Results verified independently (if possible)
- [ ] Documentation reviewed for clarity

## Best Practices

### Organization
- [ ] Project structure is logical
- [ ] Files are well-organized
- [ ] Naming conventions are consistent

### Testing
- [ ] Unit tests for key functions
- [ ] Integration tests for workflows
- [ ] Tests verify correctness

### Maintenance
- [ ] Code is maintained and updated
- [ ] Issues are tracked and addressed
- [ ] Updates are documented

---
*Checklist from Research Project Accelerator module*
