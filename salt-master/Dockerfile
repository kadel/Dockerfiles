FROM centos:7
MAINTAINER Tomas Kral <tomas.kral@gmail.com>


RUN yum clean all && \
      yum install -y yum install epel-release && \
      yum install -y https://repo.saltstack.com/yum/redhat/salt-repo-latest-2.el7.noarch.rpm && \
      yum update -y && \
      yum install -y sudo git salt-master salt-minion && \
      yum clean all

VOLUME ["/etc/salt", "/srv/salt", "/root/.ssh"]
VOLUME ["/var/cache/salt", "/var/logs/salt"]

EXPOSE 4505 4506

ENTRYPOINT ["salt-master"]
CMD ["-l", "info"]