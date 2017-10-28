#!/bin/sh
set -e -x

# This script has to be run from /servicerouter directory


HAPROXY_PIDFILE="/var/run/haproxy.pid"
HAPROXY_CONF="/usr/local/etc/haproxy/haproxy.cfg"

# this is set via docker
#MARATHON="http://192.168.121.237:8080"
#SLEEP="1m"

HAPROXY_RUN="haproxy -p $HAPROXY_PIDFILE -f $HAPROXY_CONF"

$HAPROXY_RUN
while true; do
  # reload cmd for servicerouter.py
  export HAPROXY_RELOAD_CMD="$HAPROXY_RUN -sf $(cat $HAPROXY_PIDFILE)"
  python servicerouter.py  --syslog-socket /dev/null --marathon $MARATHON --haproxy-config $HAPROXY_CONF
  sleep $SLEEP
done
