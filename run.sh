#!/bin/sh

/etc/rc.d/init.d/mongod start

pm2 start DormitoryD/index.js --name "server"
