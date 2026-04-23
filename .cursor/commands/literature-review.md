# Literature Review

## Overview

Entry point for literature work: define the topic and seed papers, search, take notes, update literature memory, then optionally draft background or related-work text.

## Skills Used

- **literature-search** — Queries, venues, time windows; output = list of papers + rationale.
- **literature-notes** — One-paper-per-note structure and grouping by theme.
- **background-writing** — Turn grouped notes into background/related-work text.
- **project-memory** — Keep `docs/README.md` and `docs/literature/README.md` in sync with the current literature pass.

## Subagents

- **research-scholar** — Literature discovery and note-taking.
- **research-writer** — Drafting background/related-work sections (when that step is included).

## Agent Instructions

1. **Delegate well**: Use the **research-scholar** agent as the default specialist for this command. Bring in **research-writer** only if the user also wants prose drafted.
2. **Define topic**: Ask for the precise topic, constraints, and any seed papers or target venues. If the user is exploring a new research direction, briefly probe feasibility and impact before searching. Ask: "What would success look like? What are the main risks?"
3. **Search**: Use the **literature-search** skill to propose search directions and produce a candidate list of papers with rationale. Prefer Exa MCP for discovery and the arXiv MCP server for paper lookup when they are configured.
4. **Select and note**: With the user, select which papers to summarize. Use the **literature-notes** skill to capture each paper in the note structure and group papers by theme.
5. **Update memory**: Use **project-memory** to keep `docs/literature/README.md` current and add only the high-level summary or next step to `docs/README.md`.
6. **Optional — draft background/related work**: If the user wants prose, use the **background-writing** skill to turn grouped notes into bullets or paragraphs for `latex/sections/2-background.tex` or `latex/sections/6-related-work.tex`. Invoke **research-writer** for editing LaTeX.
7. **Summarize**: Briefly list what was found, what notes were added, and whether background/related-work text was drafted; suggest follow-up (e.g. `/write-paper` for other sections, `/whats-next`).
