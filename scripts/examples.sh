#!/usr/bin/env bash
set -Eeuo pipefail

if [ "$1" == "-b" ]; then
  echo "Building examples..."
elif [ "$1" == "-x" ]; then
  echo "Running examples..."
else
  echo "Unexpected flag: $1"
  exit 1
fi


for f in ./examples/*.carp; do
  if [ "$1" == "-x" ]; then echo; fi
  echo "$f"
  carp "$1" "$f"
done

