service { 'iptables':
  ensure => stopped,
}
package { 'unzip':
  ensure => present,
}

include tomcat
include geoserver

