

INSTALL_TARGET=/home

tar zxvf  /home/apache-tomcat-8.5.12.tar.gz -C $INSTALL_TARGET/
mv $INSTALL_TARGET/apache-tomcat-8.5.12/ $INSTALL_TARGET/tomcat


cat >> $INSTALL_TARGET/tomcat/bin/setenv.sh <<EOF
#add pid file
CATALINA_PID="\$CATALINA_BASE/tomcat.pid"
#add JVM Options
JAVA_OPTS="-server -XX:PermSize=256M -XX:MaxPermSize=1024m -Xms512M -Xmx1024M -XX:MaxNewSize=256m"
EOF
chmod +x $INSTALL_TARGET/tomcat/bin/setenv.sh
cat >> /usr/lib/systemd/system/tomcat.service <<EOF
[Unit]
Description=Tomcat
After=syslog.target network.target remote-fs.target nss-lookup.target

[Service]
Type=forking
Environment="JAVA_HOME=/home/jdk1.8.0_121"
PIDFile=$INSTALL_TARGET/tomcat/tomcat.pid
ExecStart=$INSTALL_TARGET/tomcat/bin/startup.sh
ExecReload=/bin/kill -s HUP \$MAINPID
ExecStop=/bin/kill -s QUIT \$MAINPID
PrivateTmp=true

[Install]
WantedBy=multi-user.target
EOF
systemctl enable tomcat
systemctl start tomcat


