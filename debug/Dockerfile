FROM fedora:latest
LABEL maintainer="tomas.kral@gmail.com"



RUN dnf -y update && dnf -y install procps net-tools  && dnf clean all


ENTRYPOINT [ "sleep", "infinity" ]
