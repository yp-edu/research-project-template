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
