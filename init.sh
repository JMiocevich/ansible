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

# Check for Xcode CLT and install if necessary
if ! xcode-select -p &>/dev/null; then
    echo "Installing Xcode Command Line Tools..."
    xcode-select --install &>/dev/null

    # Wait until the Xcode CLT is installed
    until xcode-select -p &>/dev/null; do
        sleep 5
    done
fi

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(opt/homebrew/bin/brew shellenv)"') >> .zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Homebrew installation complete."

brew install ansible 

mkdir -p $HOME/personal && cd $HOME/personal

git clone https://github.com/JMiocevich/ansible.git

cd ansible  

ansible-playbook playbook.yml 