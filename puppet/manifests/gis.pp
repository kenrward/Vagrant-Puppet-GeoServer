node 'geoserver.test.server' {
 class { 'java':}
  
  exec { 'apt-get update':
	path => '/usr/bin',
	}

	package { 'vim':
	  ensure => present,
	}

	package { 'unzip':
	  ensure => present,
	}



include tomcat
#include java
include geoserver

}