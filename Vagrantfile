# -*- mode: ruby -*-
# vi: set ft=ruby :

# vagrant box list
# vagrant box remove [box_name]
# vagrant validate
# vagrant up
# vagrant halt [box_name]
# vagrant destroy [box_name]
# vagrant ssh
# vagrant ssh-config

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.hostname = "cloud-1"
  config.vm.provision :ansible_local do |ansible|
    ansible.playbook = "playbook.yml"
  end
  config.vm.network "private_network", type: "dhcp"
  config.vm.provider "virtualbox" do |vb|
    vb.name = "cloud-1"
    vb.memory = 2048
    vb.cpus = 2
  end
end
