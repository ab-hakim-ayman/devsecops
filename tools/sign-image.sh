#!/bin/bash
IMAGE=$1
KEY=$2

if [ -z "$IMAGE" ] || [ -z "$KEY" ]; then
  echo "Usage: $0 <docker-image> <key-file>"
  exit 1
fi

cosign sign --key "$KEY" "$IMAGE"
echo "Image $IMAGE signed"
