class geoserver {
	exec { 'wget-geoserver':
		command  => '/usr/bin/wget http://downloads.sourceforge.net/project/geoserver/GeoServer/2.7.0/geoserver-2.7.0-war.zip',
		cwd      => '/var/lib/tomcat6/webapps/',
        require   => Service['tomcat6'],
		#require  => File[ '/var/lib/tomcat6/webapps/geoserver-2.7.0-war.zip'],
	}

	exec { 'unzip-geoserver':
	  command  => 'sudo /usr/bin/unzip geoserver-2.7.0-war.zip',
	  cwd      => '/var/lib/tomcat6/webapps/',
	  creates => "/var/lib/tomcat6/webapps/geoserver-2.7.0.war",
	  path     => ["/usr/bin", "/usr/sbin"],
	  require  => Exec[ 'wget-geoserver' ],
	  notify   => Service['tomcat6'],
	}


}