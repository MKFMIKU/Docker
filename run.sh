#!/bin/sh

service mongod start

pm2 start DormitoryD/index.js
