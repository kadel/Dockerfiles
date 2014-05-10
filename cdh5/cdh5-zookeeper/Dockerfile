# cdh5-zookeeper
# just simple single server zookeeper

# VERSION   0.1

FROM tomaskral/cdh5-base

MAINTAINER Tomas Kral <tomas.kral@gmail.com>

RUN apt-get update
RUN apt-get install -y zookeeper-server

# initialize zookeeper data directory
RUN zookeeper-server-initialize

EXPOSE 2181 2888 3888

ENTRYPOINT ["zookeeper-server"]
CMD ["start-foreground"]


