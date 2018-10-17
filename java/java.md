
tar zxvf jdk-8u121-linux-x64.tar.gz
echo "JAVA_HOME=/home/jdk1.8.0_121" >> /etc/profile
echo "PATH=\$JAVA_HOME/bin:\$PATH" >> /etc/profile
echo "CLASSPATH=.:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib/tools.jar" >> /etc/profile
echo "export JAVA_HOME" >> /etc/profile
echo "export PATH" >> /etc/profile
echo "export CLASSPATH" >> /etc/profile
source /etc/profile

#有一些例如hadoop数据迁移需要bin/java
ln -s /home/jdk1.8.0_121/bin/java /bin/java


JAVA_HOME=/home/jdk1.7.0_80
PATH=$JAVA_HOME/bin:$PATH
CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export JAVA_HOME
export PATH
export CLASSPATH

ln -s /home/jdk1.7.0_76/bin/java /bin/java