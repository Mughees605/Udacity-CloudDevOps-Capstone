#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=mughees08/udacity

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=9090 --labels app=udacity

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward udacity 9090:9090

