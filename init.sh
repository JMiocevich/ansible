#!/bin/bash


# # Check for Xcode CLT and install if necessary

# Check if Xcode Command Line Tools are installed
if xcode-select -p &>/dev/null; then
    echo "Xcode Command Line Tools are already installed!"
else
    # Prompt to install the Xcode Command Line Tools
    echo "Installing Xcode Command Line Tools..."
    xcode-select --install

    # Wait until the installation is finished
    echo "Please wait for the installation to finish, then press any key to continue..."
    read -n 1 -s

    echo "Installation done!"
fi



pip3 install ansible
mkdir -p $HOME/personal && cd $HOME/personal

git clone https://github.com/JMiocevich/ansible.git

cd ansible  

ansible-playbook playbook.yml 