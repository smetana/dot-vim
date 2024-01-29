#!/bin/bash

server_ip=$VPN_SERVER_IP
vpn_name=$2

vpn_up() {
  echo "create xl2tpd control file"
  mkdir -p /var/run/xl2tpd
  touch /var/run/xl2tpd/l2tp-control

  echo "restart services"
  service strongswan restart
  service xl2tpd restart

  echo "start ipsec connection"
  ipsec up $vpn_name

  echo "start l2tp connection"
  echo "c myvpn" > /var/run/xl2tpd/l2tp-control

  echo "add routes"
  route add $server_ip gw 192.168.0.1
  route add default dev ppp0
}

vpn_down() {
  echo "remove routes"
  route del default dev ppp0

  echo "stop l2tp connection"
  echo "d myvpn" > /var/run/xl2tpd/l2tp-control

  echo "stop ipsec connection"
  ipsec down $vpn_name
}


usage() {
  echo "usage: vpn.sh <up|down> <vpn_name>"
}

case $1 in
  up)
    vpn_up
    ;;
  down)
    vpn_down
    ;;
  *)
    usage
    ;;
esac

# check routing
wget -qO- http://ipv4.icanhazip.com; echo

