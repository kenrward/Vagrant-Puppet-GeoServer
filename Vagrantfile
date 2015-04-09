# -*- mode: ruby -*-
# vi: set ft=ruby :

# GeoServer 
#
# Multi-box with PostgreSQL and GeoServer via Puppet.
#

Vagrant.configure("2") do  |config|
  config.vm.box = "hashicorp/precise32"
  config.vm.provision "shell", path: "install-puppet-modules.sh"
  
  #Configure GIS server with Tomcat/Java/Geoserver.war
  config.vm.define "gis" do |gis|
	gis.vm.hostname = "geoserver.test.server"
	gis.vm.network "forwarded_port", guest: 80, host: 8000
	gis.vm.network "forwarded_port", guest: 8080, host: 8880
	gis.vm.network "private_network", ip: "192.168.33.10"
	
	gis.vm.provision "puppet" do |puppet|
	  puppet.manifests_path = 'puppet/manifests'
      puppet.module_path = 'puppet/modules'
	  puppet.manifest_file = 'gis.pp'
	  puppet.options = '--debug --verbose'
	end
  end

  
  
  

end
  
