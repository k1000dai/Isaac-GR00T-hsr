#!/bin/sh
xhost +

# Setting up dataset path
if [ -n "$DATASETS_PATH" ]; then
  echo "DATASETS_PATH is set to '$DATASETS_PATH'. Mounting this path to the container as '/root/datasets'."
else
  export DATASETS_PATH="$PWD/../datasets"
  echo "DATASETS_PATH is not set. Using default path: $DATASETS_PATH"
fi

docker-compose up &