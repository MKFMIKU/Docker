#!/bin/sh

/usr/bin/mongod --dbpath "/data/db" --fork --logpath=log/mongodb.log 

pm2 start DormitoryD/index.js --name "server"


