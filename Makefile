.PHONY: install
install:
	@echo "> uv run pre-commit install"
	@uv run pre-commit install
	@echo "> uv sync"
	@uv sync

.PHONY: checks
checks:
	@echo "> uv run pre-commit run --all-files"
	@uv run pre-commit run --all-files

.PHONY: test-assets
test-assets:
	@echo "No test assets to resolve"

.PHONY: tests
tests:
	@echo "> uv pip install -e ."
	@uv pip install -e .
	@echo "> uv run pytest tests --cov=src --cov-report=term-missing --cov-fail-under=50 -s -v"
	@uv run pytest tests --cov=src --cov-report=term-missing --cov-fail-under=50 -s -v
