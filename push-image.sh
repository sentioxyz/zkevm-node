#!/bin/bash

export DOCKER_DEFAULT_PLATFORM=linux/amd64

make build-docker
docker tag zkevm-node:latest ${SENTIO_DOCKER_REPO}/cdk-validium-node:v0.6.4-cdk.6
docker push ${SENTIO_DOCKER_REPO}/cdk-validium-node:v0.6.4-cdk.6