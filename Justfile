cluster_host_cv := "cv"
cluster_host_jz := "jz"
cluster_repo_cv := "~/work/research-project-template"
cluster_repo_jz := "/lustre/fswork/projects/rech/nwq/uim47nr/research-project-template"

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

run-experiment *args:
	uv run -m scripts.run_experiment {{args}}

launch cluster experiment *args:
	just run-experiment -m {{args}} \
		hydra/launcher={{cluster}} \
		hydra/sweeper={{experiment}}

retrieve cluster experiment:
	#!/usr/bin/env bash
	set -euo pipefail
	case "{{cluster}}" in
		cv)
			src="{{cluster_host_cv}}:{{cluster_repo_cv}}/results/experiments/{{experiment}}"
			;;
		jz)
			src="{{cluster_host_jz}}:{{cluster_repo_jz}}/results/experiments/{{experiment}}"
			;;
		*)
			echo "unknown cluster: {{cluster}} (expected cv or jz)" >&2
			exit 1
			;;
	esac
	echo "Retrieving {{experiment}} from {{cluster}}..."
	scp -r "$src" ./results/experiments/

retrieve-and-sync cluster:
	#!/usr/bin/env bash
	set -euo pipefail
	case "{{cluster}}" in
		cv)
			src="{{cluster_host_cv}}:{{cluster_repo_cv}}/results/experiments/*/wandb/offline-run-*"
			;;
		jz)
			src="{{cluster_host_jz}}:{{cluster_repo_jz}}/results/experiments/*/wandb/offline-run-*"
			;;
		*)
			echo "unknown cluster: {{cluster}} (expected cv or jz)" >&2
			exit 1
			;;
	esac
	echo "Retrieving offline wandb runs from {{cluster}}..."
	scp -r $src ./results/wandb/
	echo "Syncing wandb..."
	uv run wandb sync results/wandb/*

sync-to cluster:
	#!/usr/bin/env bash
	set -euo pipefail
	case "{{cluster}}" in
		cv)
			repo='{{cluster_repo_cv}}'
			;;
		jz)
			repo='{{cluster_repo_jz}}'
			;;
		*)
			echo "unknown cluster: {{cluster}} (expected cv or jz)" >&2
			exit 1
			;;
	esac
	echo "Updating local branch tr from main..."
	git fetch -q . main:tr
	echo "Pushing tr to {{cluster}}..."
	git push -q "{{cluster}}" tr
	echo "Fast-forward main from tr on {{cluster}}..."
	ssh -q "{{cluster}}" "cd $repo && git checkout -q main && git merge -q tr --ff-only"

sync-from cluster:
	#!/usr/bin/env bash
	set -euo pipefail
	case "{{cluster}}" in
		cv)
			repo='{{cluster_repo_cv}}'
			;;
		jz)
			repo='{{cluster_repo_jz}}'
			;;
		*)
			echo "unknown cluster: {{cluster}} (expected cv or jz)" >&2
			exit 1
			;;
	esac
	echo "Fetching main:tr on {{cluster}}..."
	ssh -q "{{cluster}}" "cd $repo && git fetch -q . main:tr"
	echo "Fetching tr from {{cluster}}..."
	git fetch -q "{{cluster}}" tr:tr
	echo "Merging tr --ff-only locally..."
	git merge -q tr --ff-only
