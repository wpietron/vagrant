#!/bin/bash

# Disable firewall
service iptables stop
chkconfig iptables off

# Update Centos with patches
# yum update -y --exclude=kernel

# Tools
yum install -y nano git unzip screen nc telnet

