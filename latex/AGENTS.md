# LaTeX Guidance

- Build the paper from `latex/`, using `main.tex` as the entrypoint.
- Put all generated LaTeX output in `latex/build/`; do not write auxiliary files or PDFs beside the sources.
- The canonical build command is `latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=build main.tex` from `latex/`.
- Keep paper sources, bibliography files, figures, and section files under `latex/`. Generated build artifacts belong only in `latex/build/` and remain untracked.
- When changing paper content, keep claims consistent with the documented questions, experiments, evidence, limitations, and decisions in `docs/`.
