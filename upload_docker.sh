#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=pedramt/udacityproject

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
password=$(cat ~/dockerpassword)
docker login -u pedramt -p $password
docker tag udacityproject $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
