cat << EOF > /etc/yum.repos.d/python-ali.repo
[python-ali]
name=python-ali
baseurl=file:///home/python-ali
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/PRM-GPG-KEY-CentOS-7
enabled=1
EOF

createrepo /home/python-ali



