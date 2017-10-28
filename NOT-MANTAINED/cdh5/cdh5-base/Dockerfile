# cdh5-base
# base image with CDH5 repository, without any other component

# VERSION   0.1

FROM ubuntu:precise
MAINTAINER Tomas Kral <tomas.kral@gmail.com>

RUN apt-get update
RUN apt-get install -y -q openjdk-7-jre-headless wget dialog

# add cdh5 repository from cloudera one-click-install package
RUN wget -q -O /opt/cdh5-repository_1.0_all.deb http://archive.cloudera.com/cdh5/one-click-install/precise/amd64/cdh5-repository_1.0_all.deb
RUN dpkg -i /opt/cdh5-repository_1.0_all.deb 

RUN apt-get update


