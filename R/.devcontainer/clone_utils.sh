#!/usr/bin/env bash
set -euo pipefail

CLONE_DIR="/workspaces/dev/.devcontainer/sh-utils"
REPO_URL="https://github.com/sangjung0/sh-utils.git"

if [[ -d "$CLONE_DIR" ]]; then
    if [[ ! -d "$CLONE_DIR/.git" ]]; then
        echo "Error: '$CLONE_DIR' exists but is not a git repository." >&2
        exit 1
    fi
    echo "[INFO] '$CLONE_DIR' already exists → skipping clone"
    exit 0
fi

git clone --branch main "$REPO_URL" "$CLONE_DIR"
echo "[INFO] Cloned repository into '$CLONE_DIR'"
