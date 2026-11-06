#!/usr/bin/env bash
# Runs every futureman check: manifest validation, skill evals, style checks.
#
# Usage: scripts/evals.sh [extra args for `claude plugin eval`]
#   e.g. scripts/evals.sh --runs 1 --ablation none     (quick and cheap)
#
# Each eval run is a real model call on your account.
set -uo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
status=0

echo "== validate";    claude plugin validate .                                  || status=1
echo "== skill evals"; claude plugin eval . --no-publish --max-cost-usd 10 "$@" || status=1
echo "== style";       "$ROOT/scripts/style-check.sh" 3                          || status=1

exit $status
