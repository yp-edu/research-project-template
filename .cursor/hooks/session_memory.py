#!/usr/bin/env python3
import json
import re
from pathlib import Path
from typing import List, Optional


MAX_LINES_PER_FILE = 3
MAX_TOTAL_CHARS = 1800

SCAFFOLD_PATTERNS = [
    re.compile(r"^#\s+"),
    re.compile(r"^##\s+"),
    re.compile(r"^\s*$"),
    re.compile(r"fill during", re.IGNORECASE),
    re.compile(r"^[-*]\s*none yet\.?$", re.IGNORECASE),
    re.compile(r"^[-*]\s*add ", re.IGNORECASE),
    re.compile(r"^\d+\.\s*add ", re.IGNORECASE),
    re.compile(
        r"^[-*]\s*(topic|constraints|venues or time window|metrics|baselines|evidence needed):\s*$", re.IGNORECASE
    ),
    re.compile(r"^[-*]\s*target venue or output:\s*optional$", re.IGNORECASE),
    re.compile(r"^\d+\.\s*run `project-setup`\.?$", re.IGNORECASE),
    re.compile(r"^[-*]\s*status:\s*scaffold only$", re.IGNORECASE),
    re.compile(r"^[-*]\s*project:\s*`?research-project-template`?$", re.IGNORECASE),
]

FOCUSED_DOCS = [
    ("questions", Path("docs/questions/README.md")),
    ("literature", Path("docs/literature/README.md")),
    ("experiments", Path("docs/experiments/README.md")),
]

MAIN_MEMORY_SECTIONS = {
    "snapshot",
    "research focus",
    "next steps",
    "open questions / decisions",
}


def read_text(path: Path) -> str:
    try:
        return path.read_text(encoding="utf-8").strip()
    except OSError:
        return ""


def is_scaffold_line(line: str) -> bool:
    stripped = line.strip()
    if not stripped:
        return True
    return any(pattern.search(stripped) for pattern in SCAFFOLD_PATTERNS)


def normalize_line(line: str) -> str:
    stripped = line.strip()
    stripped = re.sub(r"^[-*]\s+", "", stripped)
    stripped = re.sub(r"^\d+\.\s+", "", stripped)
    return stripped.strip()


def parse_sections(text: str) -> List[tuple[str, List[str]]]:
    sections: List[tuple[str, List[str]]] = []
    current_heading = ""
    current_lines: List[str] = []

    for raw_line in text.splitlines():
        if raw_line.startswith("## "):
            if current_heading or current_lines:
                sections.append((current_heading, current_lines))
            current_heading = raw_line[3:].strip().lower()
            current_lines = []
            continue
        current_lines.append(raw_line)

    if current_heading or current_lines:
        sections.append((current_heading, current_lines))

    return sections


def extract_lines(text: str, limit: int, allowed_sections: Optional[set] = None) -> List[str]:
    lines: List[str] = []

    for heading, section_lines in parse_sections(text):
        if allowed_sections is not None and heading not in allowed_sections:
            continue
        for raw_line in section_lines:
            if is_scaffold_line(raw_line):
                continue
            normalized = normalize_line(raw_line)
            if not normalized or normalized in lines:
                continue
            lines.append(normalized)
            if len(lines) >= limit:
                return lines
    return lines


def summarize_doc(
    label: str,
    path: Path,
    limit: int,
    allowed_sections: Optional[set] = None,
) -> Optional[str]:
    content = read_text(path)
    if not content:
        return None
    lines = extract_lines(content, limit, allowed_sections=allowed_sections)
    if not lines:
        return None
    return f"{label}: " + " | ".join(lines)


def build_context(root: Path) -> Optional[str]:
    summaries: List[str] = []

    main_summary = summarize_doc(
        "main",
        root / "docs" / "README.md",
        MAX_LINES_PER_FILE,
        allowed_sections=MAIN_MEMORY_SECTIONS,
    )
    if main_summary:
        summaries.append(main_summary)

    for label, relative_path in FOCUSED_DOCS:
        summary = summarize_doc(label, root / relative_path, MAX_LINES_PER_FILE)
        if summary:
            summaries.append(summary)

    if not summaries:
        return (
            "Project memory docs exist but are still mostly scaffold-only. "
            "Use commands in .cursor/commands/ as the main entry points, and keep durable state in "
            "docs/README.md plus the focused memory files under docs/."
        )

    context = "Project memory summary:\n- " + "\n- ".join(summaries)
    context += (
        "\n\nUse commands in .cursor/commands/ as the main entry points. "
        "Keep high-level state in docs/README.md and detailed domain memory in docs/questions/README.md, "
        "docs/literature/README.md, and docs/experiments/README.md."
    )

    if len(context) > MAX_TOTAL_CHARS:
        context = context[: MAX_TOTAL_CHARS - 4].rstrip() + "..."
    return context


def main() -> None:
    payload = json.load(__import__("sys").stdin)
    workspace_roots = payload.get("workspace_roots") or []
    if not workspace_roots:
        print("{}")
        return

    root = Path(workspace_roots[0])
    context = build_context(root)
    if not context:
        print("{}")
        return

    response = {"additional_context": context}
    print(json.dumps(response))


if __name__ == "__main__":
    main()
