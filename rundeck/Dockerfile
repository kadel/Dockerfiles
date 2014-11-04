FROM debian:wheezy
MANTAINER Tomas Kral <tomas.kral@gmail.com>

RUN apt-get update
RUN apt-get -y install wget default-jre

ENV RDECK_BASE /opt/rundeck
ENV RUNDECK_VERSION 2.3.1

RUN mkdir $RDECK_BASE
WORKDIR /opt/rundeck
RUN wget http://dl.bintray.com/rundeck/rundeck-maven/rundeck-launcher-$RUNDECK_VERSION.jar

ADD run.sh /run.sh

EXPOSE 4440

ENTRYPOINT ["/run.sh"]

#TODO:
# use mysql as RDB http://rundeck.org/docs/administration/setting-up-an-rdb-datasource.html
