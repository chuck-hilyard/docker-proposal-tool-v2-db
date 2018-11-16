#!/bin/bash

service cron start
mongod


while :
  do
    sleep 60
    ps -ef |grep mongo
  done
