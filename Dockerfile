FROM ubuntu:xenial

MAINTAINER Aditya Mukerjee <dev@chimeracoder.net>

ENV DEBIAN_FRONTEND noninteractive 
RUN apt-get update

RUN apt-get install -y net-tools iproute

RUN apt-get install -y ncmpcpp=0.7-1
RUN apt-get remove -y ncmpcpp

ADD ncmpcpp_0.6.4-1build1_amd64.deb /ncmpcpp_0.6.4-1build1_amd64.deb
RUN dpkg -i ncmpcpp_0.6.4-1build1_amd64.deb

ADD host_ip /bin/host_ip
ADD run.sh /bin/run.sh

CMD ["/bin/run.sh"]
