class geoserver {

 exec { "wget -q  http://downloads.sourceforge.net/project/geoserver/GeoServer/2.7.0/geoserver-2.7.0-war.zip -O /home/vagrant/geoserver-2.7.0.war.zip":
    creates => "/home/vagrant/geoserver-2.7.0.war.zip",
    path    => ["/usr/bin", "/usr/sbin"]
  }

  exec { "sudo unzip /home/vagrant/geoserver-2.7.0.war.zip":
    cwd => "/home/vagrant/",
    path    => ["/usr/bin", "/usr/sbin"]
  }
  
  # Add war
  file { '/var/lib/tomcat6/webapps/geoserver.war':
    path => '/var/lib/tomcat6/webapps/geoserver.war',
    ensure => file,
    require => Package['tomcat6'],
    source => '/home/vagrant/geoserver.war',
    notify => Service['tomcat6'],
  }

}