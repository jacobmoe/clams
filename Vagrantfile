# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = 2

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "phusion/ubuntu-14.04-amd64"
  config.vm.box_check_update = true

  config.vm.define 'app' do |app|
    app.vm.network :private_network, ip: '10.0.0.100'
    app.vm.network "forwarded_port", guest: 80, host: 8080

    app.vm.synced_folder "../.", "/home/vagrant/jacobmoeller"
  end

  config.vm.provision 'ansible' do |ansible|
    ansible.playbook = 'provisioning/site.yml'
    ansible.inventory_path = 'provisioning/development'
    ansible.sudo = true
    ansible.extra_vars = { ansible_ssh_user: 'vagrant' }
  end

end
