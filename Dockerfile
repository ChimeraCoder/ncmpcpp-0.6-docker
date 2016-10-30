FROM debian:jessie

MAINTAINER Aditya Mukerjee <dev@chimeracoder.net>

ENV DEBIAN_FRONTEND noninteractive 
RUN apt-get update
RUN apt-get install -y ncmpcpp=0.5.10-2

ADD host_ip /bin/host_ip
ADD run.sh /bin/run.sh

CMD ["/bin/run.sh"]
