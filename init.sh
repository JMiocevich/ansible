#!/bin/bash


# # Check for Xcode CLT and install if necessary
if ! xcode-select -p &>/dev/null; then
    echo "Installing Xcode Command Line Tools..."
    echo "Click install on pop-up window"
    xcode-select --install &>/dev/null

    # Wait until the Xcode CLT is installed
    until xcode-select -p &>/dev/null; do
        sleep 5
    done
fi



pip3 install ansible

echo 'export PATH="/Users/joe/Library/Python/3.9/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc





mkdir -p $HOME/personal && cd $HOME/personal

git clone https://github.com/JMiocevich/ansible.git

cd ansible  

ansible-playbook playbook.yml --ask-become-pass
