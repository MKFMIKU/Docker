#!/bin/sh

/usr/bin/mongod -quiet --dbpath "/data/db"

pm2 start DormitoryD/index.js --name "server"


