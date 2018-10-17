



yum install -y mongodb-org


修改etc/mongod.conf 
bindIp=0.0.0.0


systemctl start mongod.service

mongo --host 127.0.0.1 --eval 'db = db.getSiblingDB("chat");db.createUser({user: "chat",pwd: "123456",roles: [ "readWrite", "dbAdmin" ]})'
