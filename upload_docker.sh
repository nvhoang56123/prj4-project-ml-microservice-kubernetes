#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
docker_path=nvhoang56123

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $docker_path"
docker login -u nvhoang56123
docker tag prj4-project-ml-microservice-kubernetes:1.0.0 $docker_path/prj4-project-ml-microservice-kubernetes:1.0.0

# Step 3:
# Push image to a docker repository
docker push $docker_path/prj4-project-ml-microservice-kubernetes:1.0.0