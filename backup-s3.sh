#!/bin/bash

# tar -cf archive.tar foo bar  # Create archive.tar from files foo and bar.
# tar -tvf archive.tar         # List all files in archive.tar verbosely.
# tar -xf archive.tar          # Extract all files from archive.tar.

set -eou pipefail

BUCKET="${1}"

mkdir -p "$BUCKET"
cd "$BUCKET"
aws s3 sync s3://$BUCKET . --delete --profile viniciustrainotti
cd ..
tar -cvf "$BUCKET.tar" "$BUCKET"
