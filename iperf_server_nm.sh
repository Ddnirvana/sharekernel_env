#!/bin/bash
insmod ./netmap.ko ptnet_vnet_hdr=0
sleep 0.5
ifconfig eth0 10.0.2.$1/24 up
iperf3 -s -p 11211

