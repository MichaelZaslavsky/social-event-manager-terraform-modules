#!/bin/bash
yum -y update
yum -y install httpd

ip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`

cat <<EOF > /var/www/html/index.html
<html>
    <body bgcolor="black">
        <h2><font color="gold">Build by Power of Terraform <font color="red"> v1.0.9</font></h2><br>
        <font color="green">Server Private IP: <font color="aqua">$ip<br><br>
        <font color="magenta">
        <b>Version 3.0</b>
    </body>
</html>
EOF

sudo service httpd start
chkconfig httpd on