#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=mughees08/udacity

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
sudo docker login && docker image tag $dockerpath $dockerpath 

# Step 3:
# Push image to a docker repository
sudo docker image push $dockerpath
