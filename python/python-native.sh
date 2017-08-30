cat << EOF > /etc/yum.repos.d/python-native.repo
[python-native]
name=python-native
baseurl=file:///home/python-native
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/PRM-GPG-KEY-CentOS-7
enabled=1
EOF

createrepo /home/python-native


