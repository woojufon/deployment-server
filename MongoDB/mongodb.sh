cat << EOF > /etc/yum.repos.d/mongodb.repo
[mongodb]
name=mongodb
baseurl=file:///home/mongodb
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/PRM-GPG-KEY-CentOS-7
enabled=1
EOF

createrepo /home/mongodb

