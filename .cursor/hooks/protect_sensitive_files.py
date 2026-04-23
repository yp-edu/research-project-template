#!/usr/bin/env python3
import json
from pathlib import Path


def should_block(path: Path) -> bool:
    name = path.name
    if name == "secret-env.sh":
        return True
    if name == ".env" or name.startswith(".env."):
        return True
    return False


def main() -> None:
    payload = json.load(__import__("sys").stdin)
    path = Path(payload.get("file_path", ""))

    if should_block(path):
        print(
            json.dumps(
                {
                    "permission": "deny",
                    "user_message": "Blocked reading a sensitive env file.",
                }
            )
        )
        return

    print(json.dumps({"permission": "allow"}))


if __name__ == "__main__":
    main()
