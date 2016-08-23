#!/bin/sh

/usr/bin/mongod --dbpath "/data/db" --fork --logpath=log/mongodb.log 

node DormitoryD/server/index.js 


