#!/bin/bash
set -o errexit
set -o nounset

echo "Building yjp base images, make sure you have done a 'docker login' first and set the VERSION Env variable"

docker build . -f openjdk-8-jre/Dockerfile -t  thenewmotion/yjp-openjdk-8-jre:$VERSION -t thenewmotion/yjp-openjdk-8-jre:latest
docker push thenewmotion/yjp-openjdk-8-jre:latest
docker push thenewmotion/yjp-openjdk-8-jre:$VERSION

docker build . -f openjdk-8-jre-alpine/Dockerfile -t thenewmotion/yjp-openjdk-8-jre-alpine:$VERSION -t thenewmotion/yjp-openjdk-8-jre-alpine:latest
docker push thenewmotion/yjp-openjdk-8-jre-alpine:latest
docker push thenewmotion/yjp-openjdk-8-jre-alpine:$VERSION

docker build . -f openjdk-11-jre/Dockerfile -t  thenewmotion/yjp-openjdk-11-jre:$VERSION -t thenewmotion/yjp-openjdk-11-jre:latest
docker push thenewmotion/yjp-openjdk-11-jre:latest
docker push thenewmotion/yjp-openjdk-11-jre:$VERSION

docker build . -f openjdk-11-jre-alpine/Dockerfile -t thenewmotion/yjp-openjdk-11-jre-alpine:$VERSION -t thenewmotion/yjp-openjdk-11-jre-alpine:latest
docker push thenewmotion/yjp-openjdk-11-jre-alpine:latest
docker push thenewmotion/yjp-openjdk-11-jre-alpine:$VERSION
