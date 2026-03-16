# Claims–Evidence Rules

- **Every claim** in the paper (methods, experiments, results, discussion) must map to at least one of: a result file or table, a config, a figure, or cited prior work.
- **Unsupported claims**: If you cannot point to a file/config/citation, do not add the claim; or mark it as "[TODO: add result/citation]".
- **Location**: Results live in `results/` (untracked) or in docs/tables; configs in `configs/`; code in `src/` and `scripts/`. When citing "we show X", the experiment and config that produced X must be identifiable.
- **Never fabricate**: Do not invent numbers, tables, or figures. If results are missing, ask the user for the real output or suggest running the experiment first.
