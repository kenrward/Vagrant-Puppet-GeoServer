mkdir -p /etc/puppet/modules;
yum -y update
if [ ! -d /etc/puppet/modules/java ]; then
puppet module install puppetlabs-java
puppet module install puppetlabs-tomcat
fi