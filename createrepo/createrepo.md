1、没网络安装createrepo

rpm -Uvh /home/createrepo/deltarpm-3.6-3.el7.x86_64.rpm
rpm -Uvh /home/createrepo/python-deltarpm-3.6-3.el7.x86_64.rpm
rpm -Uvh /home/createrepo/libxml2-python-2.9.1-6.el7_2.3.x86_64.rpm
rpm -Uvh /home/createrepo/createrepo-0.9.9-26.el7.noarch.rpm

2、没网络时，创建本地资源

cat << EOF > /etc/yum.repos.d/test.repo
[test]
name=test
baseurl=file:///home/test
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/PRM-GPG-KEY-CentOS-7
enabled=1
EOF

3、创建资源指令

createrepo /home/test
