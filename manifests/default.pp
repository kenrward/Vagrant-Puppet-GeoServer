exec { "apt-update":
    command => "/usr/bin/apt-get update"
}

package { 'vim-tiny':
	ensure => installed,
	}
	
package { 'tomcat6':
	ensure => 'installed',
	}
service { 'tomcat6':
	ensure => 'running',
}

file { '/var/lib/tomcat6/webapps/geoserver-2.7.0.war':
    owner => 'root',
    source => 'puppet:///modules/geoserver/geoserver-2.7.0.war',
	notify => Service['tomcat6'],
  }
