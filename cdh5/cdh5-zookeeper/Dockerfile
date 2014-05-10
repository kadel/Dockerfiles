# cdh5-zookeeper
# basic singl server zookeeper

# VERSION   0.1

# from https://github.com/kadel/Dockerfiles/tree/master/cdh5/cdh5-base
FROM cdh5-base

MAINTAINER Tomas Kral <tomas.kral@gmail.com>

RUN apt-get update
RUN apt-get install -y zookeeper-server

# initialize zookeeper data directory
RUN zookeeper-server-initialize

EXPOSE 2181 2888 3888

ENTRYPOINT ["zookeeper-server"]
CMD ["start-foreground"]


