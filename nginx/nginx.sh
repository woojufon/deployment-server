cat << EOF > /etc/yum.repos.d/nginx.repo
[nginx]
name=nginx
baseurl=file:///home/nginx
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/PRM-GPG-KEY-CentOS-7
enabled=1
EOF



