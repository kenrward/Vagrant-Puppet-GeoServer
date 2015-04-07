class java {
  package { 'openjdk-7-jre':
    ensure => 'present',
    require => Exec['apt-get update'],
  }
  
  
}