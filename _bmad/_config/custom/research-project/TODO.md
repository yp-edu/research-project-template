# Research Project Accelerator Development Roadmap

## Phase 1: Core Components (MVP)

### Agents

- [x] Implement Advisor
  - Status: ✅ Created with sidecar structure
  - File: agents/advisor.yaml
  - Features: Memory, embedded prompts, workflow routes
  - Priority: Complete

- [x] Implement Scholar
  - Status: ✅ Created with sidecar structure
  - File: agents/scholar.yaml
  - Features: Memory, embedded prompts, workflow routes
  - Priority: Complete

- [x] Implement Engineer
  - Status: ✅ Created with sidecar structure
  - File: agents/engineer.yaml
  - Features: Memory, embedded prompts, workflow routes
  - Priority: Complete

- [x] Implement Writer
  - Status: ✅ Created with sidecar structure
  - File: agents/writer.yaml
  - Features: Memory, embedded prompts, workflow routes
  - Priority: Complete

- [x] Implement Reviewer
  - Status: ✅ Created with sidecar structure
  - File: agents/reviewer.yaml
  - Features: Memory, embedded prompts, workflow routes
  - Priority: Complete

### Workflows

- [ ] Implement Project Setup
  - Use: `workflow create-workflow`
  - Input: workflows/project-setup/README.md
  - Priority: High
  - Notes: Core workflow for initializing projects, replaces placeholders

- [ ] Implement Ideation & Literature
  - Use: `workflow create-workflow`
  - Input: workflows/ideation-literature/README.md
  - Priority: High
  - Notes: Multi-agent workflow (Advisor + Scholar), foundation for research

- [ ] Implement Baseline Development
  - Use: `workflow create-workflow`
  - Input: workflows/baseline-development/README.md
  - Priority: High
  - Notes: Multi-agent workflow (Engineer + Scholar + Writer), establishes experimental foundation

- [ ] Implement Contribution Development
  - Use: `workflow create-workflow`
  - Input: workflows/contribution-development/README.md
  - Priority: High
  - Notes: Multi-agent workflow (Advisor + Engineer + Writer), core research development

- [ ] Implement Review & Revision
  - Use: `workflow create-workflow`
  - Input: workflows/review-revision/README.md
  - Priority: Medium
  - Notes: Multi-agent workflow (Reviewer + Advisor + Writer), paper improvement

### Integration

- [ ] Test agent-workflow integration
  - Verify all workflow routes in agent menus work correctly
  - Test multi-agent collaboration in workflows
  - Ensure sidecar memory integration works

- [ ] Validate configuration fields work correctly
  - Test installer with all configuration options
  - Verify placeholder replacement in installer.js
  - Test config.yaml generation

- [ ] Test Project Setup workflow end-to-end
  - Verify placeholder replacement works
  - Check results/ directory creation
  - Validate .gitignore updates

## Phase 2: Enhanced Features

### Workflow Improvements

- [ ] Add error handling to all workflows
- [ ] Implement validation steps in workflows
- [ ] Add progress tracking for long-running workflows
- [ ] Create workflow continuation support

### Agent Enhancements

- [ ] Test all agent prompts with real use cases
- [ ] Refine agent personas based on usage
- [ ] Add more specialized prompts if needed
- [ ] Optimize sidecar memory usage

### Integration Features

- [ ] Add workflow chaining (e.g., Ideation → Baseline → Contribution)
- [ ] Implement workflow state persistence
- [ ] Add workflow templates for common research patterns
- [ ] Create workflow shortcuts for frequent tasks

## Phase 3: Polish and Launch

### Testing

- [ ] Unit test all agents (prompt responses, menu items)
- [ ] Integration test all workflows end-to-end
- [ ] Test installer in clean project environment
- [ ] Test with sample research projects
- [ ] Validate multi-agent collaboration scenarios

### Documentation

- [ ] Add detailed workflow documentation
- [ ] Create agent usage examples
- [ ] Write troubleshooting guide
- [ ] Add FAQ section to README
- [ ] Create video tutorials (optional)

### Release

- [ ] Version bump to 1.0.0
- [ ] Create release notes
- [ ] Tag release in Git
- [ ] Test installation from module registry (if applicable)
- [ ] Update README with final status

## Quick Commands

### Create New Workflow

```bash
workflow create-workflow
# Then select: workflows/[workflow-name]/README.md
```

### Test Module Installation

```bash
bmad install research-project
```

### Run Agent

```bash
agent advisor
agent scholar
agent engineer
agent writer
agent reviewer
```

### Run Workflow (after implementation)

```bash
workflow project-setup
workflow ideation-literature
workflow baseline-development
workflow contribution-development
workflow review-revision
```

## Development Notes

### Important Considerations

- **Multi-Agent Workflows**: Several workflows require multiple agents working together. Ensure proper orchestration and communication between agents.
- **Iterative Development**: The Contribution Development workflow should support iterative experiment-paper co-development, not just sequential steps.
- **Reproducibility**: All workflows must maintain reproducibility standards (fixed seeds, version control, logging) as defined in Engineer agent principles.
- **Template Integration**: Project Setup workflow must integrate with existing project template structure (latex/, scripts/, src/, results/).

### Dependencies

- BMAD Method version 6.0.0-alpha.22 or higher
- Python 3.11+ (for research project template)
- LaTeX (for paper templates)
- Research project template structure

### Module Structure Reference

```
research-project/
├── agents/          # ✅ Created, all 5 agents implemented
├── workflows/       # ✅ Structure created, plans written, needs implementation
├── templates/       # ✅ Created, ready for use
├── data/            # ✅ Created, ready for use
├── _module-installer/  # ✅ Configured with custom installer.js
├── README.md        # ✅ Complete
└── module.yaml      # ✅ Complete
```

## Completion Criteria

The module is complete when:

- [ ] All Phase 1 workflows are implemented and tested
- [ ] Installation works smoothly in clean projects
- [ ] All agents can successfully trigger their workflows
- [ ] Multi-agent workflows function correctly
- [ ] Documentation covers all implemented features
- [ ] Sample research project workflow produces expected results

## Immediate Next Steps (Priority Order)

1. **Implement Project Setup Workflow** - Enables users to start using the module immediately
2. **Implement Ideation & Literature Workflow** - Core research planning functionality
3. **Test Agent-Workflow Integration** - Ensure all menu routes work correctly
4. **Implement Baseline Development Workflow** - Establish experimental foundation
5. **Implement Contribution Development Workflow** - Core research development

---

Created: 2026-01-07
Last Updated: 2026-01-07
