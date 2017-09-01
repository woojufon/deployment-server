#安装ntp
yum -y install ntp

cat << EOF > /etc/ntp.conf
driftfile /var/lib/ntp/drift
restrict 127.0.0.1 
server master iburst
restrict -4 default kod notrap nomodify
restrict -6 default kod notrap nomodify
includefile /etc/ntp/crypto/pw
keys /etc/ntp/keys
disable monitor
EOF
#强制同步
ntpdate master
ntpdate master
#启动ntp
systemctl enable ntpd.service
systemctl start ntpd.service

