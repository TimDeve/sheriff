#!/usr/bin/env bash
set -Eeuo pipefail

echo "Running tests..."
for f in ./tests/*.carp; do
  echo
  echo "$f"
  carp -x --log-memory "$f"
done

