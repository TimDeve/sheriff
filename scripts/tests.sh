#!/usr/bin/env bash
set -Eeuo pipefail

if [[ "$(uname)" =~ "Darwin" ]]; then
  export MallocNanoZone=0 # Removes error when using ASAN on MacOs
fi

echo "Running tests..."
for f in ./tests/*.carp; do
  echo
  echo "$f"
  carp -x --log-memory "$f"
done

