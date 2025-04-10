make install:
	@uv run pre-commit install
	@uv sync

.PHONY: checks
checks:
	@uv run pre-commit run --all-files

.PHONY: test-assets
test-assets:
	@echo "No test assets to resolve"

.PHONY: tests
tests:
	@uv pip install -e .
	@uv run pytest tests --cov=src --cov-report=term-missing --cov-fail-under=50 -s -v
