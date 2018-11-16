#!/bin/bash

echo "starting cron"
service cron start
sleep 5
echo "starting mongod"
mongod


while :
  do
    sleep 60
    ps -ef |grep mongo
  done
