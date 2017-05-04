#!/bin/bash
ifconfig eth0 10.0.2.$1/24 up
iperf3 -c 10.0.2.111 -p 112$1 -l 64 -P 8 -t 30
