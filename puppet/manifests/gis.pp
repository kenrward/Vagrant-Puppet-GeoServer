class { 'java':}
class { 'tomcat':}

  $tomcat_password = 'baddcweather' 
  $tomcat_port = 8080
  
package { 'tomcat6-webapps':
  ensure => present,
  notify   => Service['tomcat6'],
}
package { 'tomcat6-admin-webapps':
  ensure => present,
  notify   => Service['tomcat6'],
}
service { 'iptables':
  ensure => stopped,
}

file { "/etc/tomcat6/tomcat-users.xml":
	owner => 'root',
	require => Package['tomcat6'],
	notify => Service['tomcat6'],
	content => template('templates/tomcat-users.xml.erb')
}

file { '/etc/tomcat6/server.xml':
	owner => 'root',
	require => Package['tomcat6'],
	notify => Service['tomcat6'],
	content => template('templates/server.xml.erb'),
}


package { 'unzip':
  ensure => present,
}

include geoserver

