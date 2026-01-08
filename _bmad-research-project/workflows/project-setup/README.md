# Project Setup

## Purpose

Initialize new research projects by configuring the project template, replacing placeholders (author name, lab, email), setting up project structure, and preparing the environment for research work.

## Trigger

Trigger code: `PS` (Project Setup)
Agent: Advisor
Menu description: "Initialize new research project 🚀"

## Key Steps

1. **Configuration Collection**
   - Gather author name, lab (optional), email
   - Collect project description to determine field scope
   - Confirm project name (default: research-project-template)

2. **Template Customization**
   - Replace `<NAME>`, `<LAB>`, `<EMAIL>` placeholders in:
     - README.md
     - LaTeX templates (latex/main.tex, latex/sections/*.tex)
     - Python package metadata (pyproject.toml, src/)
     - Other configuration files

3. **Project Structure Setup**
   - Verify/configure output directory (results/, gitignored)
   - Ensure proper folder structure (src/, scripts/, latex/, results/)
   - Set up experiment tracking directories

4. **Initial Configuration**
   - Update Python package name if needed
   - Configure project-specific settings
   - Initialize git repository if not present

5. **Validation**
   - Verify all placeholders replaced
   - Confirm project structure is correct
   - Check that outputs directory is properly configured

## Expected Output

- Fully configured research project with all placeholders replaced
- Proper project structure in place
- Ready for research work to begin
- Configuration documented

## Notes

This workflow will be implemented using the create-workflow workflow.
- Integrates with module configuration (author_name, author_lab, author_email, project_description)
- Should handle both new projects and existing template customization
- Must preserve existing project content while updating placeholders
