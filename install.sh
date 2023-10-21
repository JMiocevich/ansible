/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install ansible


mkdir personal

cd personal

git clone git@github.com:JMiocevich/ansible.git
cd ansible

ansible-playbook playbook.yml

curl -L https://raw.github.com/Jmiocevich/ansible/install.sh | sh