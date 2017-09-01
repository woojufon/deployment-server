#安装ntp
yum -y install ntp

cat << EOF > /etc/ntp.conf
driftfile /var/lib/ntp/drift
restrict 127.0.0.1 
server 127.127.1.0 
fudge  127.127.1.0 stratum 10
restrict -4 default kod notrap nomodify
restrict -6 default kod notrap nomodify
includefile /etc/ntp/crypto/pw
keys /etc/ntp/keys
disable monitor
EOF
#启动ntp
systemctl enable ntpd.service
systemctl start ntpd.service
#解决ntp开机无法启动的问题
systemctl disable chronyd