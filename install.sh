/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install ansible


mkdir personal

cd personal

git clone git@github.com:JMiocevich/ansible.git
cd ansible

ansible-playbook playbook.yml