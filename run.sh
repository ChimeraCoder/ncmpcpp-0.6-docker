#! /bin/sh

HOST_IP=$(/bin/host_ip)

echo "connecting to mpd running on $HOST_IP"

exec /usr/bin/ncmpcpp --host $HOST_IP

