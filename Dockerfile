FROM ubuntu:15.04
MAINTAINER Ddnirvana "ddnirvana1@gmail.com"

RUN apt-get -qq update && apt-get install -y curl vim git build-essential net-tools iputils-ping pciutils iperf iperf3 openssh-server wget; 

ADD iperf_test.sh /home/iperf_test.sh

#$VOLUME ["/root"]
WORKDIR /home
