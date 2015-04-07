# -*- mode: ruby -*-
# vi: set ft=ruby :

# GeoServer 
#
# Single box with Apache/Tomcat and GeoServer via Puppet.
#

$script = <<SCRIPT
mkdir -p /tmp/geoserver
/usr/bin/wget -q  http://downloads.sourceforge.net/project/geoserver/GeoServer/2.7.0/geoserver-2.7.0-war.zip -O /tmp/geoserver/geoserver-2.7.0.war.zip
SCRIPT


Vagrant.configure("2") do  |config|
  config.vm.box = "hashicorp/precise32"
  config.vm.hostname = "geoserver.test.server"
  config.vm.network "forwarded_port", guest: 80, host: 8000
  config.vm.network "forwarded_port", guest: 8080, host: 8880
  config.vm.network "private_network", ip: "192.168.33.10"
  
  config.vm.provision "shell", inline: $script
  
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = 'puppet/manifests'
    puppet.module_path = 'puppet/modules'
    puppet.manifest_file = 'init.pp'
    #puppet.options = '--debug --verbose'
  end
  
  
  

end
  
