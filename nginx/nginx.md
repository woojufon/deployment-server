yum -y install nginx
systemctl enable nginx
systemctl start nginx

需要将/etc/selinux/config
设置SELINUX=disabled
重启或者
setenforce 0