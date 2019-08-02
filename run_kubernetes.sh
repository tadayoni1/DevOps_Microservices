#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=pedramt/udacityproject:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacityproject --image=docker.io/$dockerpath --port=8080 --labels="app=udacityproject" --image-pull-policy=IfNotPresent

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
container=$(kubectl get pod | grep -P "udacityproject-[^\s]*\s" -o)
kubectl port-forward $container 8000:80
