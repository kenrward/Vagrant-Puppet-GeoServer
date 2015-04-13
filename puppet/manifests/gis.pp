file { "/etc/yum.conf":
    mode   => 644,
    owner  => root,
    group  => root,
    source => "puppet:///files/yum.conf"
}

class { 'java':}
package { 'vim-enhanced.x86_64':
  ensure => present,
}

package { 'unzip':
  ensure => present,
}
#include tomcat
#include java
#include geoserver

