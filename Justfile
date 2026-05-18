cluster_host_cv := "cv"
cluster_host_jz := "jz"
cluster_repo_cv := "~/work/research-project-template"
cluster_repo_jz := "/lustre/fswork/projects/rech/nwq/uim47nr/research-project-template"
result_folders := "experiments hydra slurm"

install:
	uv run pre-commit install
	uv sync

checks:
	uv run pre-commit run --all-files

test-assets:
	@echo "No test assets to resolve"

tests:
	uv run pytest tests --cov=src --cov-report=term-missing --cov-fail-under=50 -s -v

run *args:
	uv run -m scripts.run_experiment {{args}}

launch-all dry_run="":
	#!/usr/bin/env bash
	set -euo pipefail
	shopt -s nullglob
	for job in docs/experiments/to-launch/*.sh; do
		if [ "{{dry_run}}" = "--dry-run" ] || [ "{{dry_run}}" = "dry-run" ]; then
			echo "bash ${job}"
		else
			bash "${job}"
		fi
	done
	shopt -u nullglob

wandb-sync clean="":
	export WANDB__SERVICE_WAIT=300; \
	uv run wandb sync results/experiments/*/wandb/offline-run-*; \
	if [ "{{clean}}" = "clean" ]; then \
		rm -r results/experiments/*/wandb/offline-run-*; \
	fi

retrieve cluster folder="":
	#!/usr/bin/env bash
	set -euo pipefail
	case "{{cluster}}" in
		cv)
			host="{{cluster_host_cv}}"
			repo="{{cluster_repo_cv}}"
			;;
		jz)
			host="{{cluster_host_jz}}"
			repo="{{cluster_repo_jz}}"
			;;
		*)
			echo "unknown cluster: {{cluster}} (expected cv or jz)" >&2
			exit 1
			;;
	esac
	folders="{{result_folders}}"
	if [ -n "{{folder}}" ]; then
		folders="$folders {{folder}}"
	fi
	for folder in $folders; do
		folder="${folder#results/}"
		folder="${folder#/}"
		folder="${folder%/}"
		case "$folder" in
			""|.|..|*/*)
				echo "refusing to retrieve unsafe result folder: $folder" >&2
				exit 1
				;;
		esac
		mkdir -p "./results/$folder"
		echo "Syncing results/$folder/ from {{cluster}}..."
		rsync -a "$host:$repo/results/$folder/" "./results/$folder/"
	done

clean folder="":
	#!/usr/bin/env bash
	set -euo pipefail
	shopt -s dotglob nullglob
	folders="{{result_folders}}"
	if [ -n "{{folder}}" ]; then
		folders="$folders {{folder}}"
	fi
	for folder in $folders; do
		folder="${folder#results/}"
		folder="${folder#/}"
		folder="${folder%/}"
		case "$folder" in
			""|.|..|*/*)
				echo "refusing to clean unsafe result folder: $folder" >&2
				exit 1
				;;
		esac
		mkdir -p "./results/$folder"
		echo "Cleaning results/$folder/*..."
		rm -rf "./results/$folder"/*
	done

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
