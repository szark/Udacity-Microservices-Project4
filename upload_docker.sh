#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
password=$1
# Step 1:
# Create dockerpath
dockerpath=szark/udacity-proj4

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u szark -p ${password} ## take it fromm variable
docker image tag api:latest $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath