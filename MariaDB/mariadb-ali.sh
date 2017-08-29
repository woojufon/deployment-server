cat << EOF > /etc/yum.repos.d/mariadb-local.repo
[mariadb-local]
name=mariadb-local
baseurl=file:///home/mariadb-ali
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/PRM-GPG-KEY-CentOS-7
enabled=1
EOF



