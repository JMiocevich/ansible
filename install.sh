#!/bin/bash

# Check if Homebrew is installed, if not, install it
if ! command -v brew &>/dev/null; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Update Homebrew recipes
brew update

# Install Ansible
echo "Installing Ansible..."
brew install ansible

# Verify installation
if command -v ansible &>/dev/null; then
    echo "Ansible successfully installed!"
    ansible --version
else
    echo "Something went wrong with Ansible installation. Please check the installation logs."
fi
