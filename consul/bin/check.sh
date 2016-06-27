#!/usr/local/bin/dumb-init /bin/bash

if [ $(consul members |egrep "^$(cat /etc/hostname)\s+" |grep -c alive) -eq 1 \;then
    exit 0
else
    exit 1
fi
