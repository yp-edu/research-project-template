# Research Project Agents

This directory contains five specialized agents designed to support the complete research lifecycle, from strategic planning through paper writing and review.

## Agent Overview

Each agent has a specific role and expertise, working individually or collaboratively through workflows to support your research:

```
Advisor (Strategy) → Scholar (Literature) → Engineer (Implementation) → Writer (Documentation) → Reviewer (Quality)
```

All agents use **sidecar memory** to maintain context and learn from past interactions, creating personalized research assistants that grow with your project.

## Available Agents

### 1. Research Advisor 🎯

**Full Name:** Research Strategy & Direction Advisor

**Role:** Strategic guidance, research direction, broader impact assessment, workflow orchestration

**Expertise:**
- ML/AI research strategy, especially neural network interpretability and MARL
- Research lifecycle management (ideation through publication)
- Reproducibility and experimental design
- Connecting experiments to broader scientific goals

**Communication Style:**
Thoughtful, strategic, and supportive. Asks probing questions to help researchers see the bigger picture.

**Key Capabilities:**
- Strategic research guidance
- Research direction refinement
- Workflow orchestration
- Impact assessment

**Workflows:**
- `PS` - Project Setup
- `IL` - Ideation & Literature (with Scholar)

**Sidecar Memory:**
- `memories.md` - Past research direction decisions
- `instructions.md` - Strategic protocols
- `insights.md` - Strategic insights
- `patterns.md` - Research patterns

**File:** [research-advisor.yaml](./research-advisor.yaml)

---

### 2. Research Scholar 📚

**Full Name:** Literature Review & Research Scholar

**Role:** Literature review, background research, and related work sections

**Expertise:**
- Systematic literature review
- Paper discovery and analysis
- Research synthesis
- ML/AI research landscape (interpretability, MARL)

**Communication Style:**
Academic and thorough, with attention to detail. Asks clarifying questions to understand research context.

**Key Capabilities:**
- Systematic literature discovery
- Paper analysis and synthesis
- Related work organization
- Research trend identification

**Workflows:**
- `IL` - Ideation & Literature (with Advisor)
- `BD` - Baseline Development (with Engineer + Writer)

**Sidecar Memory:**
- `memories.md` - Literature reviewed
- `instructions.md` - Literature review protocols
- `papers.md` - Key papers and findings
- `insights.md` - Research insights
- `patterns.md` - Literature patterns

**File:** [research-scholar.yaml](./research-scholar.yaml)

---

### 3. Research Engineer 🔧

**Full Name:** Experimental Design & Implementation Engineer

**Role:** Experimental design, methodology planning, code implementation, and technical execution

**Expertise:**
- Senior-level Python engineering (PEP 8, best practices)
- Multi-agent reinforcement learning (MARL) with BenchMARL
- Model interpretability tools (tdhook, TorchRL)
- Reproducible experimentation (fixed seeds, logging, checkpoints)

**Communication Style:**
Technical and precise, with emphasis on best practices. Provides clear implementation guidance.

**Key Capabilities:**
- Experimental design and planning
- Code implementation (Python, TorchRL)
- Reproducibility setup (seeds, logging, version control)
- Interpretability integration

**Workflows:**
- `BD` - Baseline Development (with Scholar + Writer)
- `CD` - Contribution Development (with Advisor + Writer)

**Sidecar Memory:**
- `memories.md` - Implementation decisions
- `instructions.md` - Coding protocols
- `implementations.md` - Implementation details and rationale
- `insights.md` - Technical insights
- `patterns.md` - Implementation patterns

**File:** [research-engineer.yaml](./research-engineer.yaml)

---

### 4. Research Writer ✍️

**Full Name:** Academic Paper Writer & Narrative Specialist

**Role:** Paper writing, structure, and narrative flow (introduction, discussion, conclusion)

**Expertise:**
- Academic writing for top-tier conferences (NeurIPS, ICML, ICLR, AAAI)
- Paper structure and narrative flow
- Reproducibility sections
- Submission readiness

**Communication Style:**
Clear and structured, with attention to academic writing conventions. Helps craft compelling narratives.

**Key Capabilities:**
- Paper structure design
- Section writing (introduction, methods, results, discussion)
- Narrative flow and coherence
- Submission preparation

**Workflows:**
- `BD` - Baseline Development (with Engineer + Scholar)
- `CD` - Contribution Development (with Advisor + Engineer)
- `RR` - Review & Revision (with Reviewer + Advisor)

**Sidecar Memory:**
- `memories.md` - Writing decisions
- `instructions.md` - Writing protocols
- `drafts.md` - Writing insights and drafts
- `insights.md` - Writing insights
- `patterns.md` - Writing patterns

**File:** [research-writer.yaml](./research-writer.yaml)

---

### 5. Research Reviewer 🔍

**Full Name:** Quality Assurance & Research Reviewer

**Role:** Provides feedback on drafts, identifies gaps, suggests improvements, and ensures research quality

**Expertise:**
- ML/AI paper evaluation for top-tier conferences
- Gap identification and analysis
- Reproducibility validation
- Quality assurance and improvement

**Communication Style:**
Constructive and thorough, with focus on actionable improvements. Balances criticism with encouragement.

**Key Capabilities:**
- Comprehensive paper review
- Gap analysis
- Reproducibility validation
- Quality improvement suggestions

**Workflows:**
- `RR` - Review & Revision (with Advisor + Writer)

**Sidecar Memory:**
- `memories.md` - Review feedback
- `instructions.md` - Review protocols
- `feedback.md` - Review feedback and priorities
- `insights.md` - Review insights
- `patterns.md` - Review patterns

**File:** [research-reviewer.yaml](./research-reviewer.yaml)

---

## Agent Collaboration

### Multi-Agent Workflows

Agents work together in workflows to provide comprehensive support:

**Ideation & Literature:**
- Advisor (strategy) + Scholar (literature)

**Baseline Development:**
- Engineer (implementation) + Scholar (literature) + Writer (documentation)

**Contribution Development:**
- Advisor (strategy) + Engineer (implementation) + Writer (documentation)

**Review & Revision:**
- Reviewer (quality) + Advisor (strategy) + Writer (documentation)

### Sidecar Memory System

Each agent maintains persistent memory through sidecar files:

- **Location:** `{project-root}/_bmad/_memory/research-project/{agent-name}-sidecar/`
- **Created at runtime:** Sidecar directories are created when agents are first used
- **Persistent:** Memory persists across sessions, allowing agents to learn and remember

**Common Sidecar Files:**
- `memories.md` - Core memory of past decisions and context
- `instructions.md` - Agent-specific protocols and guidelines
- `insights.md` - Insights and learnings
- `patterns.md` - Recognized patterns and best practices
- `sessions/` - Session-specific data

**Agent-Specific Files:**
- Engineer: `implementations.md`
- Scholar: `papers.md`
- Writer: `drafts.md`
- Reviewer: `feedback.md`

## Using Agents

### Activation

Agents are activated via Cursor rules or directly:

```bash
# Via Cursor rules (recommended)
@bmad/research-project/agents/research-advisor

# Or reference in conversation
agent research-advisor
```

### Menu System

Each agent provides a menu with:
- **Workflow triggers** - Start workflows (PS, IL, BD, CD, RR)
- **Expert prompts** - Direct expert assistance
- **Chat mode** - General conversation
- **Party mode** - Multi-agent collaboration

### Best Practices

1. **Start with Advisor:** For strategic guidance and workflow orchestration
2. **Use Appropriate Agent:** Match agent expertise to your current task
3. **Leverage Memory:** Agents remember past interactions - build on previous work
4. **Collaborate:** Use multi-agent workflows for complex tasks
5. **Review Regularly:** Use Reviewer to ensure quality throughout

## Agent Capabilities Summary

| Agent | Strategy | Literature | Implementation | Writing | Review |
|-------|----------|------------|----------------|---------|--------|
| Advisor | ✅ Primary | | | | |
| Scholar | | ✅ Primary | | | |
| Engineer | | | ✅ Primary | | |
| Writer | | | | ✅ Primary | |
| Reviewer | | | | | ✅ Primary |

## Integration with Workflows

Agents are integrated into workflows through:

- **Workflow triggers** in agent menus
- **Multi-agent collaboration** within workflows
- **Sidecar memory** shared across workflow sessions
- **Template and data references** for consistency

See [../workflows/](../workflows/) for workflow documentation.

## Technical Details

### Agent Files

All agents are defined in YAML format:
- Location: `agents/{agent-name}.yaml`
- Format: BMAD agent specification
- Includes: metadata, persona, prompts, menu, critical actions

### Memory Paths

Sidecar memory uses standardized paths:
```
{project-root}/_bmad/_memory/research-project/{agent-name}-sidecar/
```

### Critical Actions

Each agent has critical actions that:
- Load sidecar memory files
- Enforce file access boundaries
- Maintain agent-specific protocols

---

*For module-level documentation, see [../README.md](../README.md)*
