install:
	uv run pre-commit install
	uv sync

checks:
	uv run pre-commit run --all-files

test-assets:
	@echo "No test assets to resolve"

tests:
	uv run pytest tests --cov=src --cov-report=term-missing --cov-fail-under=50 -s -v

sync-experiments clean="":
	export WANDB__SERVICE_WAIT=300; \
	uv run wandb sync results/experiments/*/wandb/offline-run-*; \
	if [ "{{clean}}" = "clean" ]; then \
		rm -r results/experiments/*/wandb/offline-run-*; \
	fi

launch cluster experiment *args:
	uv run -m scripts.run_experiment -m \
		hydra/launcher={{cluster}} \
		hydra/sweeper={{experiment}} {{args}}

run-experiment *args:
    uv run -m scripts.run_experiment {{args}}

@retrieve cluster experiment:
	if [ "{{cluster}}" = "cv" ]; then \
		scp -r cv:~/work/benchmarl-training/results/experiments/{{experiment}} ./results/experiments/; \
	else \
		scp -r jz:/lustre/fswork/projects/rech/nwq/uim47nr/benchmarl-training/results/experiments/{{experiment}} ./results/experiments/; \
	fi
	@# Retrieved experiment {{experiment}} from {{cluster}}

@retrieve-and-sync cluster:
	if [ "{{cluster}}" = "cv" ]; then \
		scp -r cv:~/work/benchmarl-training/results/experiments/*/wandb/offline-run-* ./results/wandb/; \
	else \
		scp -r jz:/lustre/fswork/projects/rech/nwq/uim47nr/benchmarl-training/results/experiments/*/wandb/offline-run-* ./results/wandb/; \
	fi
	@# Retrieved offline wandb logs from {{cluster}}
	uv run wandb sync results/wandb/*
	@# Synced offline wandb logs from {{cluster}}


push-to cluster:
	git fetch . main:tr
	git push {{cluster}} tr

pull-from cluster:
	git fetch {{cluster}} tr:tr
	git merge tr --ff-only
