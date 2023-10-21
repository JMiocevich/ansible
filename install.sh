#!/bin/bash

# Check if the script is being run as root
if [ "$EUID" -eq 0 ]; then
    echo "Do not run this script as root."
    exit 1
fi

# Check if Homebrew is already installed
# if command -v brew > /dev/null 2>&1; then
#     echo "Homebrew is already installed."
#     exit 0  
# fi

# Install Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" </dev/null

(echo; echo 'eval "$(opt/homebrew/bin/brew shellenv)"') >> .zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Homebrew installation complete."

brew install ansible 

mkdir -p personal && cd personal

git clone git@github.com:JMiocevich/ansible.git

cd ansible

ansible-playbook playbook.yml 