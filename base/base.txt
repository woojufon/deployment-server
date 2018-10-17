1、关闭防火墙
systemctl disable firewalld
systemctl stop firewalld
2、安装基本指令软件
yum install -y net-tools
yum install -y psmisc