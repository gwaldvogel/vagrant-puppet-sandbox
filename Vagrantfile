# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"

  # forward ports
  config.vm.network "forwarded_port", guest: 80,    host: 8080
  config.vm.network "forwarded_port", guest: 443,   host: 1443
  config.vm.network "forwarded_port", guest: 8443,  host: 8443

  # bash provisioning with basic puppet installation
  config.vm.provision "shell", path: "vagrant/install-puppet-centos.sh"

  # puppet provisioning
  config.vm.provision "puppet" do |puppet|
    puppet.environment_path = 'puppet/environments'
    puppet.environment      = 'default'
    puppet.options          = '--fileserverconfig=/vagrant/puppet/fileserver.conf'
  end
end
