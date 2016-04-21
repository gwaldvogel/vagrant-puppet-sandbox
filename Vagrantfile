# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"

  # forward ports
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # bash provisioning with basic puppet installation
  config.vm.provision "shell", path: "vagrant/install-puppet-centos.sh"

  # puppet provisioning
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
    puppet.options = "--fileserverconfig=/vagrant/puppet/fileserver.conf"
  end
end
