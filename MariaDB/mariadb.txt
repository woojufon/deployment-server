
controller_management_ip=0.0.0.0
dbpass=root
first_dbpass=




yum install -y MariaDB-server MariaDB-client


echo "[mysqld]
bind-address = $controller_management_ip
default-storage-engine = innodb
innodb_file_per_table
collation-server = utf8_general_ci
init-connect = 'SET NAMES utf8'
character-set-server = utf8
max_connections=818
skip-name-resolve" >> /etc/my.cnf



systemctl enable mariadb
systemctl start mariadb
mysql_secure_installation <<EOF
$first_dbpass
Y
$dbpass
$dbpass
Y
n
Y
Y
EOF

mysql -uroot -p$dbpass <<EOF
use mysql;
update user set host='%' where user='root' and host='127.0.0.1';
exit
EOF

mysql -uroot -p$dbpass <<EOF
set global max_connections=2000;
exit
EOF

mysql_secure_installation <<EOF
$dbpass
n
n
n
n
Y
EOF


