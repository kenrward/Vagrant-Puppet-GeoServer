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

