#!/usr/bin/env bash

src_eth=eth4
ip=192.168.1.100

#sed -nr "/^\[system\]/ { :l /^static_ip[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" ./example-save.ini1

if [ -f example-save.ini ]; then
    ip="$(sed -nr "/^\[system\]/ { :l /^static_ip[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" ./example-save.ini)"
fi
echo "set ip = "$ip
#ifconfig $src_eth $ip


HWaddr="$(cat /sys/class/net/$src_eth/address)"
echo "HWaddr = "$HWaddr


export system_ip=$ip
export qca_hw_addr=$HWaddr

#export

