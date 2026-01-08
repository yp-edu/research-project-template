/**
 * Research Project Accelerator Module Installer
 * Custom installation logic for project template customization
 */

const fs = require('fs');
const path = require('path');

/**
 * @param {Object} options - Installation options
 * @param {string} options.projectRoot - Project root directory
 * @param {Object} options.config - Module configuration from module.yaml
 * @param {Array} options.installedIDEs - List of IDE codes being configured
 * @param {Object} options.logger - Logger instance (log, warn, error methods)
 * @returns {boolean} - true if successful, false to abort installation
 */
async function install(options) {
  const { projectRoot, config, logger } = options;

  logger.log('Installing Research Project Accelerator...');

  try {
    // Replace placeholders in project files
    const filesToUpdate = [
      'README.md',
      'latex/main.tex',
      'pyproject.toml'
    ];

    const replacements = {
      '<NAME>': config.author_name || '',
      '<LAB>': config.author_lab || '',
      '<EMAIL>': config.author_email || ''
    };

    for (const file of filesToUpdate) {
      const filePath = path.join(projectRoot, file);
      if (fs.existsSync(filePath)) {
        let content = fs.readFileSync(filePath, 'utf8');
        let updated = false;

        for (const [placeholder, value] of Object.entries(replacements)) {
          if (content.includes(placeholder)) {
            content = content.replace(new RegExp(placeholder, 'g'), value);
            updated = true;
          }
        }

        if (updated) {
          fs.writeFileSync(filePath, content, 'utf8');
          logger.log(`Updated placeholders in ${file}`);
        }
      }
    }

    // Ensure results directory exists and is gitignored
    const resultsPath = path.join(projectRoot, 'results');
    if (!fs.existsSync(resultsPath)) {
      fs.mkdirSync(resultsPath, { recursive: true });
      logger.log(`Created results directory: ${resultsPath}`);
    }

    // Add results/ to .gitignore if not present
    const gitignorePath = path.join(projectRoot, '.gitignore');
    if (fs.existsSync(gitignorePath)) {
      let gitignore = fs.readFileSync(gitignorePath, 'utf8');
      if (!gitignore.includes('results/')) {
        gitignore += '\n# Research outputs\nresults/\n';
        fs.writeFileSync(gitignorePath, gitignore, 'utf8');
        logger.log('Added results/ to .gitignore');
      }
    }

    // Copy sidecar folders and generate .mdc files for agents
    const agentsPath = path.join(projectRoot, '_bmad', 'research-project', 'agents');
    const cursorAgentsPath = path.join(projectRoot, '.cursor', 'rules', 'bmad', 'research-project', 'agents');
    const memoryPath = path.join(projectRoot, '_bmad', '_memory', 'research-project');

    if (fs.existsSync(agentsPath)) {
      // Ensure cursor agents directory exists
      if (!fs.existsSync(cursorAgentsPath)) {
        fs.mkdirSync(cursorAgentsPath, { recursive: true });
      }

      // Ensure memory directory exists for sidecars
      if (!fs.existsSync(memoryPath)) {
        fs.mkdirSync(memoryPath, { recursive: true });
      }

      // Read all YAML files in agents directory
      const agentFiles = fs.readdirSync(agentsPath).filter(file => file.endsWith('.yaml'));

      for (const agentFile of agentFiles) {
        const agentFilePath = path.join(agentsPath, agentFile);
        const agentContent = fs.readFileSync(agentFilePath, 'utf8');

        // Parse YAML to extract agent name and title
        // Look for name: field in the metadata section
        const nameMatch = agentContent.match(/^\s+name:\s*(.+)$/m);
        const titleMatch = agentContent.match(/^\s+title:\s*(.+)$/m);

        // Extract agent name (use name from YAML or fallback to filename without extension)
        const agentName = nameMatch ? nameMatch[1].trim() : agentFile.replace('.yaml', '');
        const agentTitle = titleMatch ? titleMatch[1].trim() : agentName;

        // Create sidecar directory structure (files will be created at runtime by agents)
        const sidecarDestPath = path.join(memoryPath, `${agentName}-sidecar`);

        if (!fs.existsSync(sidecarDestPath)) {
          fs.mkdirSync(sidecarDestPath, { recursive: true });
          // Create sessions subdirectory
          fs.mkdirSync(path.join(sidecarDestPath, 'sessions'), { recursive: true });
          logger.log(`Created sidecar directory: ${agentName}-sidecar in _bmad/_memory/research-project/`);
        }

        // Generate .mdc file content (filename uses agent name, description uses title)
        const mdcContent = `---
description: BMAD RESEARCH-PROJECT Agent: ${agentTitle}
globs:
alwaysApply: false
---

You must fully embody this agent's persona and follow all activation instructions exactly as specified. NEVER break character until given an exit command.

<agent-activation CRITICAL="TRUE">
1. LOAD the FULL agent file from @_bmad/research-project/agents/${agentName}.yaml
2. READ its entire contents - this contains the complete agent persona, menu, and instructions
3. Execute ALL activation steps exactly as written in the agent file
4. Follow the agent's persona and menu system precisely
5. Stay in character throughout the session
</agent-activation>
`;

        // Write .mdc file (use agent name for filename, matching BMAD pattern)
        const mdcFileName = `${agentName}.mdc`;
        const mdcFilePath = path.join(cursorAgentsPath, mdcFileName);
        fs.writeFileSync(mdcFilePath, mdcContent, 'utf8');
        logger.log(`Generated .mdc file for agent: ${agentName} (${agentTitle})`);
      }
    }

    logger.log('Research Project Accelerator installation complete!');
    logger.log('You can now use the Project Setup workflow to further customize your project.');
    return true;
  } catch (error) {
    logger.error(`Installation failed: ${error.message}`);
    return false;
  }
}

// eslint-disable-next-line unicorn/prefer-module
module.exports = { install };
