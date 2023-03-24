#!/bin/bash

set -e

# Set variables
IMAGE_NAME=myapp
TAG=$(git rev-parse --short HEAD)
REGISTRY_URL=myregistry.com
KUBECONFIG=/path/to/kubeconfig

# Build Docker image
docker build -t $IMAGE_NAME:$TAG .

# Push image to container registry
docker tag $IMAGE_NAME:$TAG $REGISTRY_URL/$IMAGE_NAME:$TAG
docker push $REGISTRY_URL/$IMAGE_NAME:$TAG

# Update Kubernetes configurations
sed "s|{{ image }}|$REGISTRY_URL/$IMAGE_NAME:$TAG|" kubernetes/configs/app-config.yml | kubectl apply -f -
kubectl apply -f kubernetes/deployments/app-deployment.yml
kubectl apply -f kubernetes/services/app-service.yml
kubectl apply -f kubernetes/ingress/app-ingress.yml

# Wait for deployment to complete
kubectl rollout status deployment/app -n myapp

echo "Deployment successful"

