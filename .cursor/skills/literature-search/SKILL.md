---
name: literature-search
description: "Queries, venues, time windows, and inclusion/exclusion criteria; output is a list of papers with short rationale."
---

# Literature Search Skill

## When to Use

- The user wants to find new papers on a topic (e.g. for background, baselines, or related work).
- You need to propose search directions and produce a candidate list with rationale.

## Instructions

- **Input**: Precise topic, constraints (e.g. domain, task), and any seed papers or venues.
- **Output**: A list of papers (citation + 1–2 line relevance) plus short rationale for inclusion (why each fits the topic/constraints).

**Process:**

1. Ask for (or infer): topic, constraints, seed papers, preferred venues or time window.
2. Propose 2–5 search directions: concrete query strings (e.g. for Google Scholar, ACL Anthology, arXiv), venues (conferences/journals), and optional time window (e.g. last 3 years).
3. Define inclusion/exclusion criteria in one sentence (e.g. "Empirical ML for X; exclude pure theory").
4. For each candidate paper, record: citation (authors, year, venue, title) and 1–2 line relevance. Add a short overall rationale (e.g. "Selected for baselines and method proximity").
5. Do not summarize paper content here; that is done by the **literature-notes** skill.
