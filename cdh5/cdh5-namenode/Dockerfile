# cdh5-namenode
# hadoop namenode

# VERSION   0.1

FROM tomaskral/cdh5-base

MAINTAINER Tomas Kral <tomas.kral@gmail.com>

RUN apt-get update
RUN apt-get install -y hadoop-hdfs-namenode

ADD conf /etc/hadoop/conf.docker

RUN update-alternatives --install /etc/hadoop/conf hadoop-conf /etc/hadoop/conf.docker 50
RUN update-alternatives --set hadoop-conf /etc/hadoop/conf.docker

ADD run.sh /run.sh

# hadoop.dfs.name.dir
VOLUME /var/lib/hadoop-hdfs/cache/dfs/name

EXPOSE 8020 50070

ENTRYPOINT  /run.sh




