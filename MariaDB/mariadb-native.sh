cat << EOF > /etc/yum.repos.d/mariadb-native.repo
[mariadb-native]
name=mariadb-native
baseurl=file:///home/mariadb-native
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/PRM-GPG-KEY-CentOS-7
enabled=1
EOF

createrepo /home/mariadb-native

