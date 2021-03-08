#!/usr/bin/env bash
set -Eeuo pipefail

echo "Building example..."
carp -b example.carp

echo "Running tests..."
for f in ./test/*.carp; do
    echo $f
    carp -x --log-memory $f
    echo
done

