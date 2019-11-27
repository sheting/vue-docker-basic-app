#!/bin/bash

START=$(date +%s)
echo "...... START CLEAN CONTAINER"

# CONTAINER
CONTAINER_NAME='basic.platform-app.dev'

# CHECK CONTAINER 
echo "..... CHECK CONTAINER IS RUNNING"
docker ps -a | grep -q -E "$CONTAINER_NAME"

if [[ $? != 0 ]]; then
    echo "$CONTAINER_NAME is not running"
else
    # clean container
    echo "... CLEAN CONTAINER $CONTAINER_NAME"
    docker rm -f "$CONTAINER_NAME"
fi

FINISH=$(date +%s)

echo "...... CONTAINNER CLEAN SUCCESSFULLY!"
echo "#### Time elapsed $(( $FINISH - $START ))s ####"
exit 0