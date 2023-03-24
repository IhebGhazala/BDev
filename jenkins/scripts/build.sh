#!/bin/bash

# Build the Docker image
docker build -t my-app .

# Tag the Docker image
docker tag my-app my-repo/my-app:latest

