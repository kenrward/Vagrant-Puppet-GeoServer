class tomcat {
  $tomcat_password = 'baddcweather' 
  $tomcat_port = 8080
  
  package { 'tomcat6':
    ensure => 'present',
    #require => Exec['apt-get update'],
  }
  service { 'tomcat6':
    ensure => running,
    require => Package['tomcat6'],
  }
  
  package { 'tomcat6-admin':
    require => Package['tomcat6'],
  }
  
  file { "/etc/tomcat6/tomcat-users.xml":
    owner => 'root',
    require => Package['tomcat6'],
    notify => Service['tomcat6'],
    content => template('tomcat/tomcat-users.xml.erb')
  }
  
  file { '/etc/tomcat6/server.xml':
     owner => 'root',
     require => Package['tomcat6'],
     notify => Service['tomcat6'],
     content => template('tomcat/server.xml.erb'),
  }
  
}