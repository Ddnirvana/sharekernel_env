FROM ubuntu:15.04
MAINTAINER Ddnirvana "ddnirvana1@gmail.com"

RUN apt-get -qq update && apt-get install -y curl vim git build-essential net-tools iputils-ping pciutils iperf iperf3 openssh-server wget module-init-tools; 

ADD iperf_test.sh /home/iperf_test.sh
ADD iperf_server.sh /home/iperf_server.sh
ADD iperf_server_nm.sh /home/iperf_server_nm.sh
ADD build_net.sh /home/build_net.sh
ADD netmap.ko /home/netmap.ko

#$VOLUME ["/root"]
WORKDIR /home
