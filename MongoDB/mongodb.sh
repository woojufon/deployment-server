



yum install -y mongodb-org


修改etc/mongod.conf 
bindIp


systemctl start mongod.service

mongo --host 172.27.108.72 --eval 'db = db.getSiblingDB("chat");db.createUser({user: "chat",pwd: "123456",roles: [ "readWrite", "dbAdmin" ]})'
