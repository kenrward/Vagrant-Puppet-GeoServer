class geoserver {

  # Add war
  file { 'OpenGeoSuiteEnterprise-4.5.war':
    path => '/var/lib/tomcat6/webapps/OpenGeoSuiteEnterprise-4.5.war',
    ensure => file,
    require => Package['tomcat6'],
    source => 'puppet:///modules/geoserver/OpenGeoSuiteEnterprise-4.5.war',
    notify => Service['tomcat6'],
  }

  
}