#!/bin/bash

#service sshd stop
#/usr/sbin/sshd -D

$SPARK_HOME/sbin/start-slave.sh -h spark://$SPARK_MASTER_IP:7077

if [[ $1 == "-d" ]]; then
  while true; do sleep 1000; done
fi

if [[ $1 == "-bash" ]]; then
  /bin/bash $*
fi