#!/bin/bash

SITE=$1
ZBX_SRV="10.34.252.43"

docker run -it -e ZBX_SERVER_HOST=10.34.252.43 \
    -e ZBX_HOSTNAME="zabbix-proxy-$1" \
    -e ZBX_PROXYMODE=0 \
    -e ZBX_SERVER_HOST=$ZBX_SRV \
    -e DB_SERVER_HOST="localhost" \
    -e MYSQL_USER="zabbix" \
    -e MYSQL_PASSWORD="zabbix" \
    zabbix/zabbix-proxy-mysql:centos-4.2.8 
