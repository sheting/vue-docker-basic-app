#!/bin/bash

START=$(date +%s)
echo "##########"
echo "...... build dev image start"
echo "##########"

# REPOSITORY & TAG & IMAGE
REPOSITORY="basic/platform-app-dev-env"
TAG="0.0.1"
IMAGE_LOCAL="$REPOSITORY:$TAG"

# BUILD IMAGE
docker images | grep -q -E "^$REPOSITORY\s+$TAG\s+"
if [ $? != 0 ]; then
  echo "Need to rebuild $IMAGE_LOCAL"
  docker build -f ./Docker/Dockerfile-dev -t $IMAGE_LOCAL .
  if [ $? != 0 ]; then
    echo "!!!Error: Build $IMAGE_LOCAL failed!"
    exit 1
  fi
else
  echo "No need to rebuild the $IMAGE_LOCAL."
fi


FINISH=$(date +%s)

echo "#### Time elapsed $(( $FINISH - $START ))s ####"
exit 0
