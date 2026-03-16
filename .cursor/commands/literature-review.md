# Literature Review

## Overview

Repeatable workflow to find new papers and turn them into background or related work: define topic and seed papers, search, select and take notes, then optionally draft background/related-work sections.

## Skills Used

- **literature-search** — Queries, venues, time windows; output = list of papers + rationale.
- **literature-notes** — One-paper-per-note structure and grouping by theme.
- **background-writing** — Turn grouped notes into background/related-work text.

## Subagents

- **research-scholar** — Literature discovery and note-taking.
- **research-writer** — Drafting background/related-work sections (when that step is included).

## Agent Instructions

1. **Define topic**: Ask for the precise topic, constraints, and any seed papers or target venues.
2. **Search**: Use the **literature-search** skill to propose search directions and produce a candidate list of papers with rationale.
3. **Select and note**: With the user, select which papers to summarize. Use the **literature-notes** skill to capture each paper in the note structure and group papers by theme.
4. **Optional — draft background/related work**: If the user wants prose, use the **background-writing** skill to turn grouped notes into bullets or paragraphs for `latex/sections/2-background.tex` or `latex/sections/6-related-work.tex`. Invoke **research-writer** for editing LaTeX.
5. **Summarize**: Briefly list what was found, what notes were added, and whether background/related-work text was drafted; suggest follow-up (e.g. `/write-paper` for other sections, `/whats-next`).
