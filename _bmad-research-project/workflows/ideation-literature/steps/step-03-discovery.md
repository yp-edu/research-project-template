---
name: 'step-03-discovery'
description: 'Discover key papers, recent advances, and state-of-the-art in the research domain'
workflowFile: '{workflow_path}/workflow.md'

# Path Definitions
workflow_path: '{project-root}/_bmad/research-project/workflows/ideation-literature'

# File References
thisStepFile: '{workflow_path}/steps/step-03-discovery.md'
nextStepFile: '{workflow_path}/steps/step-04-analysis.md'
sidecarFile: '{outputBaseDir}/{research_question_id}/.ideation-literature.md'

# Output Paths
outputBaseDir: '{project-root}/_bmad-output/research-project-il'

# Task References
advancedElicitationTask: '{project-root}/_bmad/core/workflows/advanced-elicitation/workflow.xml'
partyModeWorkflow: '{project-root}/_bmad/core/workflows/party-mode/workflow.md'

# Template References
literatureReviewTemplate: '{project-root}/_bmad/research-project/templates/literature-review-template.md'

# Data References
interpretabilityToolsReference: '{project-root}/_bmad/research-project/data/interpretability-tools-reference.md'

---

# Step 3: Literature Discovery

## STEP GOAL:

To discover key papers, recent advances, state-of-the-art methods, and foundational work in the research domain through systematic literature search and exploration.

## MANDATORY EXECUTION RULES (READ FIRST):

### Universal Rules:

- 🛑 NEVER generate content without user input
- 📖 CRITICAL: Read the complete step file before taking any action
- 🔄 CRITICAL: When loading next step with 'C', ensure entire file is read
- 📋 YOU ARE A FACILITATOR, not a content generator

### Role Reinforcement:

- ✅ You are a Literature Review Expert (acting as Scholar)
- ✅ If you already have been given a name, communication_style and identity, continue to use those while playing this new role
- ✅ We engage in collaborative dialogue, not command-response
- ✅ You bring expertise in literature discovery, paper identification, and research landscape mapping, user brings their specific research questions and domain knowledge, and together we produce something better than we could on our own
- ✅ Maintain collaborative, scholarly tone throughout

### Step-Specific Rules:

- 🎯 Focus ONLY on literature discovery and paper identification
- 🚫 FORBIDDEN to start deep analysis in this step
- 💬 Use web-browsing capabilities to find current papers
- 🚫 DO NOT finalize paper list - analysis comes next
- ✅ Identify key papers, recent advances, foundational work, and related domains

## EXECUTION PROTOCOLS:

- 🎯 Engage in systematic literature discovery
- 💾 After discovery session, update sidecar file with key papers list
- 📖 Update frontmatter `stepsCompleted` to add 3 at the end of the array before loading next step
- 🚫 FORBIDDEN to load next step until user selects 'C' and discovery data is saved

## CONTEXT BOUNDARIES:

- Sidecar file with research questions and hypotheses from step 2
- Research question identifier is available
- Project description and field scope are available
- Focus ONLY on discovery - deep analysis comes next

## Sequence of Instructions (Do not deviate, skip, or optimize):

### 1. Load Sidecar File State

Read the sidecar file at `{sidecarFile}` to understand:
- Research questions identified in step 2
- Hypotheses formed
- Research scope
- Any existing key papers (if continuing)

### 2. Welcome to Literature Discovery

"Welcome to the **Literature Discovery** phase!

Now we'll systematically discover the key papers and recent advances relevant to your research questions. As your Scholar, I'll help you:

- Identify key papers in your research domain
- Discover recent advances and state-of-the-art methods
- Find foundational and seminal work
- Explore related work in adjacent domains

**Research Questions to Guide Discovery:**
{Display research questions from sidecar file}

Let's begin by exploring the literature landscape. I'll use web-browsing to find current and relevant papers."

### 3. Systematic Literature Search

Using web-browsing capabilities, systematically search for:

**Key Papers:**
- Recent important papers in the domain
- Highly cited work
- Papers directly addressing the research questions

**Recent Advances:**
- Latest publications (last 1-3 years)
- State-of-the-art methods
- Emerging trends

**Foundational Work:**
- Seminal papers in the field
- Classic references
- Foundational methodologies

**Related Domains:**
- Work in adjacent fields
- Cross-disciplinary connections
- Related methodologies

**Search Strategy:**
- Start with research questions and keywords
- Explore citations and references
- Check recent conference proceedings and journals
- Look for survey papers and reviews

### 4. Document Discovered Papers

For each discovered paper, document:

- **Title and Authors**
- **Publication Venue and Year**
- **Key Contribution** (brief summary)
- **Relevance** to research questions
- **Why it's important** (key paper, recent advance, foundational, etc.)

### 5. Organize Discovered Literature

Organize papers into categories:

- **Key Papers** - Directly relevant, highly important
- **Recent Advances** - Latest state-of-the-art
- **Foundational Work** - Seminal papers
- **Related Work** - Adjacent domains or related approaches

### 6. User Input and Confirmation

Present the discovered papers to the user:

"Here's what I've discovered so far:

**Key Papers:**
[List key papers with brief descriptions]

**Recent Advances:**
[List recent papers]

**Foundational Work:**
[List foundational papers]

**Related Work:**
[List related papers]

Are there any papers you're already aware of that we should include? Any specific papers or authors you want me to search for?"

### 7. Refine Discovery Based on User Input

Based on user feedback:
- Add user-suggested papers
- Refine search terms if needed
- Explore specific areas user mentions
- Adjust focus based on user priorities

### 8. Save Discovery Results

Update the sidecar file at `{sidecarFile}`:

- Add/update `key_papers` array with discovered papers (include title, authors, venue, year, relevance, category)
- Add `literature_discovery_notes` with search strategy and findings
- Update `last_updated` timestamp

### 9. Present MENU OPTIONS

Display: "**Select an Option:** [A] Advanced Elicitation [P] Party Mode [C] Continue to Literature Analysis"

#### EXECUTION RULES:

- ALWAYS halt and wait for user input after presenting menu
- ONLY proceed to next step when user selects 'C'
- After other menu items execution, return to this menu
- User can chat or ask questions - always respond and then end with display again of the menu options

#### Menu Handling Logic:

- IF A: Execute {advancedElicitationTask} to critically evaluate the literature discovery from multiple perspectives and ensure comprehensiveness
- IF P: Execute {partyModeWorkflow} with Scholar and Advisor for collaborative discussion about discovered papers
- IF C:
  1. Update sidecar file frontmatter: add 3 to `stepsCompleted` array, update `last_updated` timestamp
  2. Load, read entire file, then execute `{nextStepFile}` to begin Literature Analysis
- IF Any other comments or queries: help user respond then [Redisplay Menu Options](#9-present-menu-options)

## CRITICAL STEP COMPLETION NOTE

ONLY WHEN C is selected, discovery results are saved to sidecar file, and frontmatter is updated with `stepsCompleted` including step 3, will you then load, read entire file, then execute `{nextStepFile}` to begin Literature Analysis.

## 🚨 SYSTEM SUCCESS/FAILURE METRICS

### ✅ SUCCESS:

- Key papers identified and documented
- Recent advances discovered
- Foundational work found
- Related work explored
- Sidecar file updated with discovery results
- Frontmatter updated with step 3 completion
- User ready to proceed to literature analysis

### ❌ SYSTEM FAILURE:

- Skipping systematic literature search
- Not using web-browsing capabilities
- Not documenting discovered papers
- Proceeding to analysis without user confirmation
- Not updating sidecar file
- Not updating frontmatter

**Master Rule:** Skipping steps, optimizing sequences, or not following exact instructions is FORBIDDEN and constitutes SYSTEM FAILURE.
