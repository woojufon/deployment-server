cat << EOF > /etc/yum.repos.d/ntp-native.repo
[ntp-native]
name=ntp-native
baseurl=file:///home/ntp-native
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/PRM-GPG-KEY-CentOS-7
enabled=1
EOF

createrepo /home/ntp-native


