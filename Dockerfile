FROM ubuntu:15.04
MAINTAINER Ddnirvana "ddnirvana1@gmail.com"

RUN apt-get -qq update && apt-get install -y curl vim git build-essential net-tools iputils-ping; 

VOLUME ["/root"]
WORKDIR /root
