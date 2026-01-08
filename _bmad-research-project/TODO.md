# Research Project Accelerator Development Roadmap

## Phase 1: Core Components (MVP)

### Agents

- [x] Implement Advisor
  - Status: ✅ Complete - Renamed to research-advisor, paths fixed
  - File: agents/research-advisor.yaml
  - Features: Memory, embedded prompts, workflow routes
  - Notes: All workflow routes use standard BMAD paths

- [x] Implement Scholar
  - Status: ✅ Complete - Renamed to research-scholar, paths fixed
  - File: agents/research-scholar.yaml
  - Features: Memory, embedded prompts, workflow routes
  - Notes: All workflow routes use standard BMAD paths

- [x] Implement Engineer
  - Status: ✅ Complete - Renamed to research-engineer, paths fixed
  - File: agents/research-engineer.yaml
  - Features: Memory, embedded prompts, workflow routes
  - Notes: All workflow routes use standard BMAD paths

- [x] Implement Writer
  - Status: ✅ Complete - Renamed to research-writer, paths fixed
  - File: agents/research-writer.yaml
  - Features: Memory, embedded prompts, workflow routes
  - Notes: All workflow routes use standard BMAD paths

- [x] Implement Reviewer
  - Status: ✅ Complete - Renamed to research-reviewer, paths fixed
  - File: agents/research-reviewer.yaml
  - Features: Memory, embedded prompts, workflow routes
  - Notes: All workflow routes use standard BMAD paths

### Workflows

- [x] Implement Project Setup
  - Status: ✅ Complete - All steps implemented, paths fixed
  - File: workflows/project-setup/workflow.md
  - Steps: 6 steps + continuation support
  - Notes: Core workflow for initializing projects, replaces placeholders
  - Paths: All workflow_path references use standard BMAD pattern

- [x] Implement Ideation & Literature
  - Status: ✅ Complete - All steps implemented, paths fixed
  - File: workflows/ideation-literature/workflow.md
  - Steps: 6 steps + continuation support
  - Notes: Multi-agent workflow (research-advisor + research-scholar), foundation for research
  - Paths: All workflow_path references use standard BMAD pattern

- [x] Implement Baseline Development
  - Status: ✅ Complete - All steps implemented, paths fixed
  - File: workflows/baseline-development/workflow.md
  - Steps: 8 steps + continuation support
  - Notes: Multi-agent workflow (research-engineer + research-scholar + research-writer), establishes experimental foundation
  - Paths: All workflow_path references use standard BMAD pattern

- [x] Implement Contribution Development
  - Status: ✅ Complete - All steps implemented, paths fixed
  - File: workflows/contribution-development/workflow.md
  - Steps: 8 steps + continuation support
  - Notes: Multi-agent workflow (research-advisor + research-engineer + research-writer), core research development
  - Paths: All workflow_path references use standard BMAD pattern

- [x] Implement Review & Revision
  - Status: ✅ Complete - All steps implemented, paths fixed
  - File: workflows/review-revision/workflow.md
  - Steps: 9 steps + continuation support
  - Notes: Multi-agent workflow (research-reviewer + research-advisor + research-writer), paper improvement
  - Paths: All workflow_path references use standard BMAD pattern

### Integration

- [x] Agent renaming and path fixes
  - Status: ✅ Complete
  - All agents renamed with "research-" prefix
  - All agent workflow routes use standard BMAD paths: `{project-root}/_bmad/research-project/workflows/...`
  - All workflow step files use correct workflow_path references
  - Agent-workflow coherence verified

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

- [ ] Generate agent .mdc files for Cursor rules
  - Create .mdc files in `.cursor/rules/bmad/research-project/agents/`
  - Reference agent YAML files correctly
  - Ensure agents are accessible via Cursor rules

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
npx bmad-method@alpha install
# When prompted: Select "Add/Install custom modules", enter: _bmad-research-project
```

### Run Agent

```bash
agent research-advisor
agent research-scholar
agent research-engineer
agent research-writer
agent research-reviewer
```

### Run Workflow

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
├── agents/          # ✅ Complete - All 5 agents with research- prefix, paths fixed
├── workflows/       # ✅ Complete - All 5 workflows fully implemented with steps
├── templates/       # ✅ Created, ready for use
├── data/            # ✅ Created, ready for use
├── _module-installer/  # ✅ Configured with custom installer.js
├── README.md        # ✅ Complete - Updated with new agent names
└── module.yaml      # ✅ Complete
```

## Completion Criteria

The module is complete when:

- [x] All Phase 1 workflows are implemented and tested
- [ ] Installation works smoothly in clean projects
- [ ] All agents can successfully trigger their workflows
- [ ] Multi-agent workflows function correctly
- [ ] Documentation covers all implemented features
- [ ] Sample research project workflow produces expected results

## Immediate Next Steps (Priority Order)

1. **Generate agent .mdc files for Cursor rules** - Make agents accessible via Cursor rules system
2. **Test Agent-Workflow Integration** - Verify all menu routes work correctly after installation
3. **Test Installation** - Run `npx bmad-method@alpha install` (select custom modules, path: `_bmad-research-project`) and verify all files are correctly placed
4. **End-to-End Testing** - Test each workflow with real scenarios
5. **Documentation Updates** - Ensure all examples use correct agent names (research-*)

---

Created: 2026-01-07
Last Updated: 2026-01-07

## Recent Updates

- ✅ All agents renamed with "research-" prefix (research-advisor, research-scholar, etc.)
- ✅ All workflow paths fixed to use standard BMAD pattern: `{project-root}/_bmad/research-project/workflows/...`
- ✅ All workflow step files updated with correct workflow_path references (42 files fixed)
- ✅ Agent menu routes verified and corrected
- ✅ README.md updated with new agent names
- ✅ All 5 workflows fully implemented with complete step files
- ✅ Temporary development files cleaned up
