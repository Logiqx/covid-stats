# Project Env
. $(dirname $0)/env.sh

# Determine Tag
IMAGE_NAME=$PROJ_NAME
IMAGE_TAG=tmp

# Docker Build
DOCKER_BUILDKIT=1 docker build . --file Dockerfile-slim --build-arg LOGIQX_DEBUG -t $IMAGE_NAME:$IMAGE_TAG

# Copy the library scripts
docker run --rm --entrypoint cat $IMAGE_NAME:$IMAGE_TAG $WORK_DIR/python/common_core.py >$PROJ_DIR/python/common_core.py
docker run --rm --entrypoint cat $IMAGE_NAME:$IMAGE_TAG $WORK_DIR/python/phe_core.py >$PROJ_DIR/python/phe_core.py
docker run --rm --entrypoint cat $IMAGE_NAME:$IMAGE_TAG $WORK_DIR/python/phe_download.py >$PROJ_DIR/python/phe_download.py
docker run --rm --entrypoint cat $IMAGE_NAME:$IMAGE_TAG $WORK_DIR/python/ons_core.py >$PROJ_DIR/python/ons_core.py
docker run --rm --entrypoint cat $IMAGE_NAME:$IMAGE_TAG $WORK_DIR/python/ons_download.py >$PROJ_DIR/python/ons_download.py
docker run --rm --entrypoint cat $IMAGE_NAME:$IMAGE_TAG $WORK_DIR/python/ons_population.py >$PROJ_DIR/python/ons_population.py
docker run --rm --entrypoint cat $IMAGE_NAME:$IMAGE_TAG $WORK_DIR/python/nhs_core.py >$PROJ_DIR/python/nhs_core.py
docker run --rm --entrypoint cat $IMAGE_NAME:$IMAGE_TAG $WORK_DIR/python/nhs_download.py >$PROJ_DIR/python/nhs_download.py

# Clear pycache
rm -f $PROJ_DIR/python/__pycache__/*.*.pyc
