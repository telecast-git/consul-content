#!/usr/local/bin/dumb-init /bin/bash

source /opt/qnib/consul/etc/bash_functions.sh

wait_for_srv_loop consul
exit 0
