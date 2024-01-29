#!/bin/bash

# Create xl2tpd control file
mkdir -p /var/run/xl2tpd
touch /var/run/xl2tpd/l2tp-control

service strongswan restart
service strongswan restart

# Start ipsec conn
ipsec up myvpn

# Start L2TP conn
echo "c myvpn" > /var/run/xl2tpd/l2tp-control

route add $VPN_SERVER_IP gw 192.168.0.1
route add default dev ppp0

# Check routing
wget -qO- http://ipv4.icanhazip.com; echo
