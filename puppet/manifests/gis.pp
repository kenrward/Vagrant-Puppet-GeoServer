service { 'iptables':
  ensure => stopped,
}
package { 'unzip':
  ensure => present,
}

package { 'java-1.7.0-openjdk':
  ensure => present,
}


include tomcat
include geoserver

