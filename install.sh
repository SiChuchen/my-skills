#!/usr/bin/env bash

set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source_dir="$script_dir/skills"
target_dir="${1:-$HOME/.codex/skills}"

if [[ ! -d "$source_dir" ]]; then
  echo "Skills directory not found: $source_dir" >&2
  exit 1
fi

mkdir -p "$target_dir"

rsync -a --delete \
  --exclude='__pycache__' \
  --exclude='*.pyc' \
  "$source_dir"/ "$target_dir"/

echo "Synced skills to: $target_dir"
echo "Restart Codex after syncing so new skills can be discovered reliably."
