class { 'java':}
class { 'tomcat':}

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


package { 'unzip':
  ensure => present,
}
#include tomcat
#include java
#include geoserver

