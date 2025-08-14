#!/bin/bash

# Default to CPU mode
MODE="cpu"
GPU_FLAG=""

# Parse flags
if [ "$1" == "-g" ]; then
  MODE="gpu"
  GPU_FLAG="--gpus all" # Add the GPU flag only if -g is specified
elif [ "$1" == "-c" ]; then
  MODE="cpu"
fi

echo "Running the ${MODE} container..."

# Run the container, adding the --gpus all flag ONLY for the GPU version
docker run -it ${GPU_FLAG} -p 8888:8888 -v "$(pwd):/home/appuser/project" cnn-waste-env-${MODE}
