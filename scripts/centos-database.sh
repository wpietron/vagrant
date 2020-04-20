#!/bin/bash

# PHP
yum install -y php php-cli php-common php-devel php-mysql

# MySQL
yum install -y mysql mysql-server mysql-devel

chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";

# Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/wpietron/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/wpietron/vagrant/master/files/info.php

service httpd restart
