FROM centos:centos7
MAINTAINER Tomas Kral <tomas.kral@gmail.com>


RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install epel-release && \
    yum -y --setopt=tsflags=nodocs install redis && \
    yum clean all

ADD redis.conf /etc/redis.conf
RUN mkdir /data; chmod 777 /data
EXPOSE 6379

# Run as redis user
USER 997
ENTRYPOINT ["redis-server", "/etc/redis.conf"]

