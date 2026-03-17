# Package Renaming Procedure

When the user sets a project name different from `research-project-template`, derive the package name and update all references.

## Derivation Rule

```
package_name = project_name.replace("-", "_")
```

Examples: `my-awesome-project` → `my_awesome_project`, `research-project-template` → `research_project_template`.

## Ordered Steps

### 1. Rename the source folder

- Rename `src/research_project_template/` to `src/<package_name>/`
- Preserve all files inside (e.g. `core.py`, `__init__.py` if present)

### 2. Update pyproject.toml

- Replace `name = "research-project-template"` with `name = "<project_name>"`

### 3. Update imports in code

Search for `research_project_template` and replace with `<package_name>` in:

- `scripts/demo.py` — `from research_project_template.core import ...` → `from <package_name>.core import ...`
- `tests/unit/test_core.py` — same pattern
- `notebooks/loss.ipynb` — same pattern in code cells

### 4. Update notebook and kernel docs

- `notebooks/README.md` — replace `research-project-template` with `<project_name>` in kernel install/uninstall commands and display name
- `notebooks/create-kernel.sh` — set `PROJECT_NAME="<project_name>"` and `DISPLAY_NAME` to an appropriate label (e.g. `"🔬 <Project Name>"`)

### 5. Update skill references

- `.cursor/skills/experiment-implementation/SKILL.md` — replace `src/research_project_template/` with `src/<package_name>/`
- `.cursor/skills/experiment-implementation/references/implementation-notes.md` — same replacement

### 6. Regenerate lockfile

- Run `uv sync` to regenerate `uv.lock` after pyproject changes

## File Summary

| File | Change |
|------|--------|
| `src/research_project_template/` | Rename folder to `src/<package_name>/` |
| `pyproject.toml` | `name = "<project_name>"` |
| `scripts/demo.py` | Import: `research_project_template` → `<package_name>` |
| `tests/unit/test_core.py` | Import: same |
| `notebooks/loss.ipynb` | Import: same (in code cells) |
| `notebooks/README.md` | Kernel name in commands |
| `notebooks/create-kernel.sh` | `PROJECT_NAME`, `DISPLAY_NAME` |
| `.cursor/skills/experiment-implementation/SKILL.md` | Path: `src/research_project_template/` → `src/<package_name>/` |
| `.cursor/skills/experiment-implementation/references/implementation-notes.md` | Path: same |
