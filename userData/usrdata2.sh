#!/bin/bash
sudo su 
yum update -y
yum install httpd php php-mysql -y
#chkconfig httpd on
systemctl enable httpd.service
systemctl start httpd.service
echo "<h1>Instance B</h1>" > /var/www/html/index.php