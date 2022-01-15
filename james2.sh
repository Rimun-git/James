#!/bin/bash

# Description:  Web Server Launch
# Author: James
# Date: 1/14/2022


yum install httpd -y
systemctl start httpd
yum install firewalld -y
systemctl start firewalld
firewall-cmd --permanent --addport=80/tcp
firewall-cmd --reload
cd /var/www/html
vi index.html
