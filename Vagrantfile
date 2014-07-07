# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"

  config.vm.define "control" do |control|
    control.vm.network "private_network", ip: "192.168.33.10"
    control.vm.provider "virtualbox" do |v|
      v.memory = 768
      v.cpus = 1
    end
  end

  config.vm.define "app1" do |app1|
    app1.vm.network "private_network", ip: "192.168.33.11"
  end

  config.vm.define "db1" do |db1|
    db1.vm.network "private_network", ip: "192.168.33.12"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
    ansible.sudo = true
  end
end
