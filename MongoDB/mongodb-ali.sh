cat << EOF > /etc/yum.repos.d/mongodb-ali.repo
[mongodb-ali]
name=mongodb-ali
baseurl=file:///home/mongodb-ali
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/PRM-GPG-KEY-CentOS-7
enabled=1
EOF



