# Project Env
. $(dirname $0)/env.sh

# Determine Tag
IMAGE_NAME=$PROJ_NAME
IMAGE_TAG=$(git rev-parse --short=12 HEAD)

# Docker Build
DOCKER_BUILDKIT=1 docker build . --file Dockerfile --build-arg LOGIQX_DEBUG -t $IMAGE_NAME:$IMAGE_TAG

# Download PHE data
run_py_script phe_download.py

# Download NHS data
run_py_script nhs_download.py

# Docker Tag
docker tag $IMAGE_NAME:$IMAGE_TAG $IMAGE_NAME:latest
