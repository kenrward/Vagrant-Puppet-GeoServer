mkdir -p /etc/puppet/modules;
if [ ! -d /etc/puppet/modules/java ]; then
puppet module install puppetlabs-java
fi