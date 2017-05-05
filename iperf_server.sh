#!/bin/bash
ifconfig eth0 10.0.2.$1/24 up
iperf3 -s -p 11211
