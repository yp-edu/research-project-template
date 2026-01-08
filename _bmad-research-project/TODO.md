# Research Project Accelerator - Development TODO

## Status

✅ **Core Implementation Complete**
- All 5 agents implemented (research-advisor, research-scholar, research-engineer, research-writer, research-reviewer)
- All 5 workflows fully implemented with complete step files
- Module structure, templates, and data files created
- Installer configured with sidecar support
- Documentation (READMEs) created

## Pending Tasks

### Testing & Validation

- [ ] **Test Installation**
  - Run `npx bmad-method@alpha install` (select custom modules, path: `_bmad-research-project`)
  - Verify all files are correctly placed
  - Test installer with all configuration options
  - Verify placeholder replacement in installer.js
  - Test config.yaml generation

- [ ] **Test Agent-Workflow Integration**
  - Verify all workflow routes in agent menus work correctly
  - Test multi-agent collaboration in workflows
  - Ensure sidecar memory integration works
  - Verify agents can trigger workflows from menus

- [ ] **End-to-End Workflow Testing**
  - Test Project Setup workflow (verify placeholder replacement, results/ directory creation, .gitignore updates)
  - Test each workflow with real scenarios
  - Validate multi-agent collaboration scenarios
  - Test workflow continuation support

- [ ] **Generate Agent .mdc Files**
  - Create .mdc files in `.cursor/rules/bmad/research-project/agents/`
  - Reference agent YAML files correctly
  - Ensure agents are accessible via Cursor rules
  - Note: Installer should handle this automatically, verify it works

### Documentation

- [x] Main README created
- [x] Agent README created
- [x] Workflow README created
- [ ] Add troubleshooting guide
- [ ] Add FAQ section to README
- [ ] Create agent usage examples (beyond what's in READMEs)

### Future Enhancements (Optional)

- [ ] Add error handling to all workflows
- [ ] Implement validation steps in workflows
- [ ] Add progress tracking for long-running workflows
- [ ] Test and refine agent prompts with real use cases
- [ ] Add workflow chaining (e.g., Ideation → Baseline → Contribution)
- [ ] Implement workflow state persistence
- [ ] Create workflow templates for common research patterns
