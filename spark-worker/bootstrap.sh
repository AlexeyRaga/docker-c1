#!/bin/bash

#service sshd stop
#/usr/sbin/sshd -D

$SPARK_HOME/sbin/start-slave.sh

if [[ $1 == "-d" ]]; then
  while true; do sleep 1000; done
fi

if [[ $1 == "-bash" ]]; then
  /bin/bash $*
fi