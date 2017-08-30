cat << EOF > /etc/yum.repos.d/mariadb-ali.repo
[mariadb-ali]
name=mariadb-ali
baseurl=file:///home/mariadb-ali
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/PRM-GPG-KEY-CentOS-7
enabled=1
EOF

createrepo /home/mariadb-ali


