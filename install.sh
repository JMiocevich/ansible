#!/usr/bin/env bash

# This is part of a larger script for setting a mac for python development.
set -e

# Shared functions

pretty_print() {
  printf "\n%b\n" "$1"
}
# 
pretty_print "Here we go..."

# So it begins


# Homebrew installation

if ! command -v brew &>/dev/null; then
  pretty_print "Installing Homebrew, an OSX package manager, follow the instructions..." 
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


  if ! grep -qs "recommended by brew doctor" ~/.zshrc; then
    pretty_print "Put Homebrew location earlier in PATH ..."
      printf '\n# recommended by brew doctor\n' >> ~/.zshrc
      printf 'export PATH="/usr/local/bin:$PATH"\n' >> ~/.zshrc
      export PATH="/usr/local/bin:$PATH"
  fi
else
  pretty_print "You already have Homebrew installed...good job!"
fi

# Homebrew OSX libraries

pretty_print "Updating brew formulas"
  	brew update
brew install ansible


mkdir personal

cd ./personal

git clone git@github.com:JMiocevich/ansible.git
cd ansible

ansible-playbook playbook.yml

curl -L https://raw.github.com/Jmiocevich/ansible/install.sh | sh