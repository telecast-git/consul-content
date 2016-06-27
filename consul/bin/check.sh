#!/usr/local/bin/dumb-init /bin/bash

if [ $(consul members |egrep "^$(cat /etc/hostname)\s+" |grep -c alive) -eq 1 ] ; then
    consul members |egrep "^$(cat /etc/hostname)\s+"
    exit 0
else
    consul members
    exit 1
fi
