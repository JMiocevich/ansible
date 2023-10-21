#!/bin/bash

# Check if Homebrew is installed, install if we don't have it
if test ! $(which brew); then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew repositories and formulae
echo "Updating Homebrew..."
brew update

# Install Ansible
echo "Installing Ansible..."
brew install ansible

echo "Ansible installation completed!"
