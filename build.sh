#!/bin/bash

# Default to CPU mode if no flag is provided
MODE="cpu"

# Parse command-line flags (-c for cpu, -g for gpu)
if [ "$1" == "-g" ]; then
  MODE="gpu"
elif [ "$1" == "-c" ]; then
  MODE="cpu"
fi

echo "Building the ${MODE} environment..."

# Build the appropriate Docker image using the corresponding Dockerfile
docker build -f Dockerfile.${MODE} --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) -t cnn-waste-env-${MODE} .

echo "Build complete. Your image is named: cnn-waste-env-${MODE}"
