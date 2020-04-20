#!/bin/bash

# Apache
yum install -y httpd httpd-devel httpd-tools

chkconfig --add httpd
chkconfig  httpd on
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start 

# Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/wpietron/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/wpietron/vagrant/master/files/info.php

service httpd restart
