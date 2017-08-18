FROM openshift/jenkins-slave-base-centos7

MAINTAINER Tomas Kral <tomas.kral@gmail.com>

ENV GO_VERSION=1.8 \
    GOPATH=${HOME}/go \
    PATH=${GOPATH}/bin:${HOME}/bin:$PATH


RUN mkdir -p ${HOME}/bin && \
    curl -sL -o ${HOME}/bin/gimme https://raw.githubusercontent.com/travis-ci/gimme/master/gimme &&\
    chmod +x ${HOME}/bin/gimme

# Install given go version
RUN gimme ${GO_VERSION} && \
    source ~/.gimme/envs/go${GO_VERSION}.env

RUN chown -R 1001:0 $HOME && \
    chmod -R g+rw $HOME

USER 1001