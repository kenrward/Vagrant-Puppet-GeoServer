# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
Vagrant.configure(2) do |config|

  # Using Hashicorp/precise32 found https://atlas.hashicorp.com/hashicorp/boxes/precise32
  config.vm.box = "hashicorp/precise32"
  config.vm.hostname = "geoserver.test.server"
  config.vm.network "forwarded_port", guest: 80, host: 8000
  config.vm.network "forwarded_port", guest: 8080, host: 8880
  config.vm.network "private_network", ip: "192.168.33.10"
  
  config.vm.provision "shell", path: "install-puppet-modules.sh"
  
  config.vm.provision "puppet" do |puppet|
	puppet.options = "--verbose --debug"
  end

end
