yum -y install openssl-devel bzip2-devel expat-devel gdbm-devel readline-devel sqlite-devel gcc
tar -zxvf Python-3.6.4.tgz
./configure --prefix=/usr/py/py3.6
make
make test
make install
ln -s /usr/py/py3.6/bin/python3 /usr/bin/python3
ln -s /usr/py/py3.6/bin/pip3.6  /usr/bin/pip3

