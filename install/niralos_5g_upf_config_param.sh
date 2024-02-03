#!/bin/bash
#Path /home/user/niralos/niral-5g-core

echo "Configuration of 5G-UPF on reboot as a bare metal"
#Creating tunnel for UPF to connect with Radio

echo "Creating GTP tunnel for UPF to connect with Radio"
sysctl -w net.ipv4.ip_forward=1
ip tuntap add name niralos-gw mode tun
ip addr add 101.202.0.1/16 dev niralos-gw
ip link set niralos-gw up



#ip route del 0.0.0.0/0 dev <if-name>

iptables -t nat -A POSTROUTING -o ens33 -s 101.202.0.0/16 -p all -j MASQUERADE

