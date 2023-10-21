#!/usr/bin/env bash

# This is part of a larger script for setting a mac for python development.
set -e

# Shared functions


# So it begins


# Homebrew installation

if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew, an OSX package manager, follow the instructions..." 
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


  if ! grep -qs "recommended by brew doctor" ~/.zshrc; then
      echo 'export PATH="/usr/local/bin:$PATH"\n' >> ~/.zshrc
      export PATH="/usr/local/bin:$PATH"
  fi
else
  echo "You already have Homebrew installed...good job!"
fi

# Homebrew OSX libraries

echo "Updating brew formulas"
brew update
brew install ansible


mkdir personal

cd ./personal

git clone git@github.com:JMiocevich/ansible.git
cd ansible

ansible-playbook playbook.yml

