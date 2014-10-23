# Chronos
#
# VERSION 0.3

FROM debian
MAINTAINER Tomas Kral <tomas.kral@gmail.com>

ENV DEB_VERSION_CHRONOS 2.2.0-0.1.20141002204602
ENV DEB_VERSION_MESOS 0.20.1-1.0.debian75


RUN echo "deb http://repos.mesosphere.io/debian wheezy main" > /etc/apt/sources.list.d/mesosphere.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF
RUN apt-get update

RUN apt-get -f -y install chronos=$DEB_VERSION_CHRONOS mesos=$DEB_VERSION_MESOS

# we don't want to use localhost as zk_host
RUN rm /etc/mesos/zk
# don't set http_port 
RUN rm /etc/chronos/conf/http_port

EXPOSE 8080

ENTRYPOINT ["/usr/local/bin/chronos"]


