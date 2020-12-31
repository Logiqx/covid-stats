# Project Env
. $(dirname $0)/env.sh

# Determine Tag
IMAGE_NAME=$PROJ_NAME
IMAGE_TAG=tmp

# Docker Build
DOCKER_BUILDKIT=1 docker build . --file Dockerfile --build-arg LOGIQX_DEBUG -t $IMAGE_NAME:$IMAGE_TAG

# Copy the library scripts
docker run --rm --entrypoint cat scw-comp:tmp $WORK_DIR/python/common_functions.py >$PROJ_DIR/python/common_functions.py

# Clear pycache
rm -f $PROJ_DIR/python/__pycache__/common_functions.*.pyc
