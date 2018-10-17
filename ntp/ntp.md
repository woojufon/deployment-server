1、修改etc/hostname
master
slave
2、修改etc/hosts

172.27.108.75 master
172.27.108.76 slave

3、重启网络
systemctl restart network.service

4、ssh断开重连

5、关闭防火墙

systemctl disable firewalld
systemctl stop firewalld

6、需要将/etc/selinux/config（可选，没有用）
设置SELINUX=disabled
setenforce 0

7、分别执行ntp_master.sh和ntp_slave.sh

8、执行
ntpq -c assoc
验证是否已经同步
一般slave节点不同步，需要等一会