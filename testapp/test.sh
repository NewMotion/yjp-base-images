#!/bin/bash
set -o errexit
set -o nounset

echo Building App 
sbt universal:stage

echo Building docker images
docker build -f Dockerfile_8 -t testapp8 .
docker build -f Dockerfile_8a -t testapp8a .
docker build -f Dockerfile_11 -t testapp11 .
docker build -f Dockerfile_11a -t testapp11a .

echo Running docker images
docker run -ti --rm testapp8 1000000
docker run -ti --rm testapp8a 1000000
docker run -ti --rm testapp11 1000000
docker run -ti --rm testapp11a 1000000

