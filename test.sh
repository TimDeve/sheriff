#!/usr/bin/env bash
set -Eeuo pipefail

echo "Running tests..."
for f in ./test/*.carp; do
    echo $f
    carp -x --log-memory $f
    echo
done

