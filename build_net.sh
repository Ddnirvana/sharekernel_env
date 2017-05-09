#!/bin/bash
insmod ./netmap.ko ptnet_vnet_hdr=0
ifconfig eth0 10.0.2.$1/24 up
