#
# https://github.com/henszey/etcd-browser
#

FROM nginx
MAINTAINER Tomas Kral <tomas.kral@gmail.com>

RUN apt-get update
RUN apt-get -y install git

RUN rm -r /usr/local/nginx/html/*
RUN git clone https://github.com/henszey/etcd-browser.git /usr/local/nginx/html/

