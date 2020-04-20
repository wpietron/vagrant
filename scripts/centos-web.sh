#!/bin/bash

# Apache
yum install -y httpd httpd-devel httpd-tools

chkconfig --add httpd
chkconfig  httpd on
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start 
