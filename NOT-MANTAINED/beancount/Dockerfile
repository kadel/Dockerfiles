FROM bitnami/minideb:stretch

RUN apt-get update; \
    apt-get -y install python3-pip mercurial

RUN pip3 install hg+https://bitbucket.org/blais/beancount@master
RUN pip3 install fava

ENV LC_ALL="C.UTF-8" \
    LANG="C.UTF-8" 

VOLUME /data/
EXPOSE 5000

CMD ["fava", "--host", "0.0.0.0", "--port", "5000", "/data/data.beancount"]