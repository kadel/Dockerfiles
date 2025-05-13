FROM registry.fedoraproject.org/fedora:43
LABEL maintainer="tomas.kral@gmail.com"

RUN dnf -y update && \
    dnf -y install nginx && \
    dnf clean all


ADD nginx.conf /etc/nginx/nginx.conf

#  for some reason nginx is still trying to create /var/log/nginx/error.log
#  even if error_log /dev/stderr is set
RUN chmod -R go+rwx /var/log/nginx


EXPOSE 8080
RUN chmod -R go+rwx /var/lib/nginx

USER 997

ENTRYPOINT [ "/usr/sbin/nginx" ]
