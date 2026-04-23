#!/usr/bin/env python3
import json
import re


ASK_PATTERNS = [
    (re.compile(r"\brm\s+-rf\b"), "recursive deletion"),
    (re.compile(r"\bgit\s+reset\s+--hard\b"), "hard git reset"),
    (re.compile(r"\bgit\s+clean\b.*-[A-Za-z]*f[A-Za-z]*d"), "git clean removing files"),
    (re.compile(r"\bgit\s+push\b.*\s(--force|-f)(\s|$)"), "force push"),
    (re.compile(r"\bscp\b|\bssh\b|\brsync\b"), "remote file or shell access"),
    (re.compile(r"\bjust\s+sync-(to|from)\b"), "cluster sync helper"),
]


def main() -> None:
    payload = json.load(__import__("sys").stdin)
    command = payload.get("command", "")

    for pattern, label in ASK_PATTERNS:
        if pattern.search(command):
            print(
                json.dumps(
                    {
                        "permission": "ask",
                        "user_message": f"Approve risky shell command: {label}.",
                        "agent_message": (
                            f"The command matches the repo's risky-command guard ({label}). "
                            "Double-check intent before continuing."
                        ),
                    }
                )
            )
            return

    print(json.dumps({"permission": "allow"}))


if __name__ == "__main__":
    main()
