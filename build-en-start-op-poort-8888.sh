#!/bin/bash

IMAGE=dw2s-image
CONTAINER=dw2s-container
docker build -t $IMAGE .
docker stop $CONTAINER 2>/dev/null
docker rm $CONTAINER 2>/dev/null

docker run -d -p 8888:80 --name $CONTAINER $IMAGE

echo "http://localhost:8888"
