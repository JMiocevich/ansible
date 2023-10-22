pip3 install ansible
mkdir -p $HOME/personal && cd $HOME/personal

git clone https://github.com/JMiocevich/ansible.git

cd ansible  

ansible-playbook playbook.yml 