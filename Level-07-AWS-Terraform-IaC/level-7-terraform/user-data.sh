#!/bin/bash

set -euxo pipefail

# Update the operating system
dnf update -y

# Install Docker and AWS CLI
dnf install -y docker awscli

# Start Docker
systemctl enable docker
systemctl start docker

# Login to Amazon ECR (registry host only, not the full repo path)
aws ecr get-login-password --region ${aws_region} | docker login --username AWS --password-stdin "$(echo ${ecr_repository_url} | cut -d'/' -f1)"

# Pull application image from ECR
docker pull ${ecr_repository_url}:${docker_image_tag}

# Remove old container if it exists
docker rm -f level7-webapp 2>/dev/null || true

# Start Tomcat application container
docker run -d --name level7-webapp --restart unless-stopped -p 8080:8080 ${ecr_repository_url}:${docker_image_tag}