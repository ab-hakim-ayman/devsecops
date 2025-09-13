#!/bin/bash
IMAGE=$1
OUTPUT=${2:-sbom.json}

if [ -z "$IMAGE" ]; then
  echo "Usage: $0 <docker-image> [output-file]"
  exit 1
fi

trivy image --format json --output "$OUTPUT" "$IMAGE"
echo "SBOM generated at $OUTPUT"
