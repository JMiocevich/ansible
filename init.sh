#!/bin/bash


# # Check for Xcode CLT and install if necessary
if ! xcode-select -p &>/dev/null; then
    echo "Installing Xcode Command Line Tools..."
    xcode-select --install &>/dev/null

    # Wait until the Xcode CLT is installed
    until xcode-select -p &>/dev/null; do
        sleep 5
    done
fi



pip3 install ansible
mkdir -p $HOME/personal && cd $HOME/personal

git clone https://github.com/JMiocevich/ansible.git

cd ansible  

ansible-playbook playbook.yml 