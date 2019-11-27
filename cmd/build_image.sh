#!/bin/bash

START=$(date +%s)
echo "##########"
echo "...... BUILD PACKAGING IMAGE START"
echo "##########"

# REPOSITORY & TAG & IMAGE
TAG='0.0.1'

REPOSITORY_ENV="basic/platform-app-build-env"
IMAGE_LOCAL_ENV="$REPOSITORY_ENV:$TAG"
SERVER_REPOSITORY="basic/platform-app"
SERVER_IMAGE_LOCAL="$SERVER_REPOSITORY:$TAG"

# PREPARE: BUILD  PACKAGING IMAGE
docker images | grep -q -E "^$REPOSITORY_ENV\s+$TAG\s+"
if [ $? != 0 ]; then
    echo "... Need to build build-env image."
    docker build --force-rm -f ./Docker/Dockerfile-build -t $IMAGE_LOCAL_ENV .
    if [ $? != 0 ]; then
        echo "!!!ERROR: Build build-env image failed!"
        exit 1
    fi
else
    echo "... the build-env image exist, no need to rebuild."
fi

# PACKAGING & BUILD SERVER IMAGE
echo "###### PACKAGING & BUILD SERVER IMAGE $SERVER_IMAGE_LOCAL FORCE ######"

docker build --force-rm --build-arg BASE_TAG=$TAG -f ./Docker/Dockerfile-server -t $SERVER_IMAGE_LOCAL .
if [ $? != 0 ]; then
    echo "!!!ERROR: Build server image failed!"
    exit 1
fi
if [[ $CONCURRENCY != "true" ]]; then
    docker rmi $(docker images -q -f dangling=true)
fi
echo -e "\n##### $(docker images | grep -E "^$SERVER_REPOSITORY\s+$TAG\s+")"
echo "... BUILD SERVER IMAGE SUCCESSFULLY!"
BUILD_COMPLETE=$(date +%s)

# todo: PUSH IMAGE
# if [[ $PUSH_IMAGE == "true" ]]; then
#     ../deployment/script/utils/push_image.sh $SERVER_IMAGE_LOCAL
# fi

FINISH=$(date +%s)

echo "#### Time elapsed $(( $FINISH - $START ))s ####"
exit 0
