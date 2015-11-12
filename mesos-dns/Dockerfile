FROM alpine
MAINTAINER Tomas Kral <tkral@redhat.com>

ENV MESOS_DNS_VERSION=0.4.0

ADD https://github.com/mesosphere/mesos-dns/releases/download/v${MESOS_DNS_VERSION}/mesos-dns-v${MESOS_DNS_VERSION}-linux-amd64.gz /mesos-dns/

WORKDIR /mesos-dns/
RUN gzip -d mesos-dns-v${MESOS_DNS_VERSION}-linux-amd64.gz
# when using exec form of ENTRYPOINT there is no sh (no env variables)
RUN mv mesos-dns-v${MESOS_DNS_VERSION}-linux-amd64 mesos-dns
RUN chmod +x mesos-dns

COPY config_sample.json /mesos-dns/

EXPOSE 53 8123

ENTRYPOINT ["/mesos-dns/mesos-dns"]
CMD ["-config", "/mesos-dns/config_sample.json"]
