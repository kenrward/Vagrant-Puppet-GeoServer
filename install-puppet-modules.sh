#!/bin/bash
mkdir -p /etc/puppet/modules;

if [ ! -d /etc/puppet/modules/tomcat ]; then
  #puppet module install puppetlabs-java
  puppet module install puppetlabs-tomcat
fi