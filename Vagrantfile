# -*- mode: ruby -*-
# vi: set ft=ruby :

# IDP GeoServer 
#
# Multi box with Postgresql and GeoServer via Puppet.
#

$script = <<SCRIPT

SCRIPT


Vagrant.configure("2") do  |config|
  #config.vm.box = "hashicorp/precise32"
  #config.vm.hostname = "geoserver.test.server"
  #config.vm.network "forwarded_port", guest: 80, host: 8000
  #config.vm.network "forwarded_port", guest: 8080, host: 8880
  #config.vm.network "private_network", ip: "192.168.33.10"
  
  #config.vm.provision "shell", inline: $script
  
  config.vm.define "gis" do |gis|
    gis.vm.box = "hashicorp/precise32"
    gis.vm.network "forwarded_port", guest: 80, host: 8000
    gis.vm.network "forwarded_port", guest: 8080, host: 8880
    gis.vm.network "private_network", ip: "192.168.33.10"  
    
      gis.vm.provision "puppet" do |puppet|
        puppet.manifests_path = 'puppet/manifests'
        puppet.module_path = 'puppet/modules'
        puppet.manifest_file = 'init.pp'
        #puppet.options = '--debug --verbose'
      end
  end

  config.vm.define "db" do |db|
    db.vm.box = "hashicorp/precise32"
    db.vm.network "forwarded_port", guest: 3306, host: 3306
    db.vm.network "private_network", ip: "192.168.33.11"
  end
  
  
  

end