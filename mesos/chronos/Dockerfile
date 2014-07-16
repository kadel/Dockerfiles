# Chronos
# based on: http://mesosphere.io/learn/run-chronos-on-mesos/
#
# VERSION 0.1

FROM debian
MAINTAINER Tomas Kral <tomas.kral@firma.seznam.cz>

RUN apt-get update
RUN apt-get -y install curl openjdk-7-jre

WORKDIR /opt/

RUN curl -sSfL http://downloads.mesosphere.io/chronos/chronos-2.1.0_mesos-0.14.0-rc4.tgz --output chronos.tgz
RUN tar xzf chronos.tgz

RUN curl -sSfL http://downloads.mesosphere.io/master/debian/7/mesos_0.19.0~debian7.1%2B1_amd64.deb --output mesos.deb
RUN dpkg -i mesos.deb
RUN apt-get -f -y install 


EXPOSE 8080

ENTRYPOINT ["/opt/chronos/bin/start-chronos.bash"]


