#!/bin/bash

set -eou pipefail

BUCKET="${1}"
PROFILE="${2:-default}"

mkdir -p "$BUCKET"
cd "$BUCKET"
aws s3 sync s3://$BUCKET . --delete --profile "$PROFILE"
cd ..
tar -cvf "$BUCKET.tar" "$BUCKET"
