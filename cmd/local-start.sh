#!/bin/bash

START=$(date +%s)
echo "#### LET'S GO ####"
echo "...... START LOCAL DEVELOP SERVER"

# CONTAINER & TAG & IMAGE
CONTAINER_NAME='basic.platform-app.dev'

IMAGE_LOCAL_NAME='basic/platform-app-dev-env'
IMAGE_LOCAL_VER='0.0.1'
IMAGE_LOCAL="$IMAGE_LOCAL_NAME:$IMAGE_LOCAL_VER"

TYPE=${1:-"dev"}

execImage () {
    docker run --privileged -dit -p 9999:80 -p 9998:80 -p 8000:8000 -v ${PWD}:/code --name "$CONTAINER_NAME" "$IMAGE_LOCAL"
    docker exec -d "$CONTAINER_NAME" /bin/sh -c "sh cmd/start-dev.sh > basic-dev.log 2>&1"
}

# CHECK CONTAINER 
echo "..... CHECK CONTAINER IS RUNNING"
docker ps -a | grep -q -E "$CONTAINER_NAME"

if [[ $? != 0 ]]; then
    echo "$CONTAINER_NAME is not running"
    # start container
    echo "... START CONTAINER"
    execImage
else
    # restart container
    echo "... !RESTART CONTAINER $CONTAINER_NAME"
    docker rm -f "$CONTAINER_NAME"
    sleep 10
    execImage
fi


FINISH=$(date +%s)

echo "...... CONTAINNER START SUCCESSFULLY!"
echo "#### Time elapsed $(( $FINISH - $START ))s ####"
exit 0