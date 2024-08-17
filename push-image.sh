#!/bin/bash

export DOCKER_DEFAULT_PLATFORM=linux/amd64
branch=$(git symbolic-ref --short HEAD)
arr=(${branch//\// })
version=${arr[1]}

echo "build for $version"

make build-docker
docker tag zkevm-node:latest ${SENTIO_DOCKER_REPO}/zkevm-node:$version
docker push ${SENTIO_DOCKER_REPO}/zkevm-node:$version
