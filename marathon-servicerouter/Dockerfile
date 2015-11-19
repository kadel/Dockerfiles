FROM haproxy
MAINTAINER Tomas Kral <tkral@redhat.com>

RUN apt-get update && apt-get install -y python python-pip
RUN pip install requests

COPY servicerouter /servicerouter/
COPY run.sh /run.sh

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

ENV MARATHON="http://localhost:8080"
ENV SLEEP="1m"

WORKDIR /servicerouter
CMD /run.sh
