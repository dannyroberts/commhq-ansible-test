sudo apt-get update
sudo apt-get install -y python-software-properties
sudo apt-add-repository ppa:rquillo/ansible
sudo apt-get update
sudo apt-get install -y ansible

sudo cp /vagrant/provisioning/id_rsa /home/vagrant/.ssh/id_rsa
sudo chown vagrant:vagrant /home/vagrant/.ssh/id_rsa

ssh-keyscan 192.168.33.11 >> /home/vagrant/.ssh/known_hosts
ssh-keyscan 192.168.33.12 >> /home/vagrant/.ssh/known_hosts

echo "Provision completed! Now ssh into the control box by:

vagrant ssh control
"
