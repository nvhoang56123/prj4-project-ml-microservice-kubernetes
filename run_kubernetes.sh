# Step 1:
# This is your Docker ID/path
docker_path=nvhoang56123

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy prj4-project-ml-microservice-kubernetes --image="$docker_path/prj4-project-ml-microservice-kubernetes:1.0.0"


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/prj4-project-ml-microservice-kubernetes 8000:80
