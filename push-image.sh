#!/bin/bash

export DOCKER_DEFAULT_PLATFORM=linux/amd64

make build-docker
docker tag zkevm-node:latest ${SENTIO_DOCKER_REPO}/cdk-validium-node:v0.5.13-cdk.8
docker push ${SENTIO_DOCKER_REPO}/cdk-validium-node:v0.5.13-cdk.8