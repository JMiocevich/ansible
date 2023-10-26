#!/bin/bash
brew install ansible

mkdir -p $HOME/personal && cd $HOME/personal

git clone https://github.com/JMiocevich/ansible.git

cd ansible  && git pull

ansible-playbook playbook.yml --ask-become-pass
