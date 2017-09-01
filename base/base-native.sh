cat << EOF > /etc/yum.repos.d/base-native.repo
[base-native]
name=base-native
baseurl=file:///home/base-native
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/PRM-GPG-KEY-CentOS-7
enabled=1
EOF

createrepo /home/base-native


