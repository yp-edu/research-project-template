.PHONY: checks
checks:
	@uv run pre-commit run --all-files

.PHONY: test-assets
test-assets:
	@echo "No test assets to resolve"

.PHONY: tests
tests:
	@echo "No tests to run"
