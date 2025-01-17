#!/bin/bash

# Update the package list
sudo apt update

# Install prerequisites
sudo apt install apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add the Docker repository to APT sources:
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the package list again
sudo apt update

# Make sure you are about to install from the Docker repo instead of the default Ubuntu repo:
apt-cache policy docker-ce

# Install Docker
sudo apt install docker-ce

# Enable Docker service
sudo systemctl enable docker

# Start Docker service
sudo systemctl start docker

# Inform the user to log out and back in for changes to take effect
echo "Docker installation completed successfully."

echo "Adding Docker user to group to use docker without sudo"

# Add the current user to the 'docker' group
sudo usermod -aG docker $USER

# List groups
groups

# Make docker group membership changes to take effect
newgrp docker

# Inform the user to log out and back in for changes to take effect
echo "Adding Docker user to group to use docker without sudo  completed successfully"






