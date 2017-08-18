FROM openshift/jenkins-slave-base-centos7

MAINTAINER Tomas Kral <tomas.kral@gmail.com>

ENV GO_VERSION=1.8 

RUN mkdir -p ${HOME}/bin && \
    curl -sL -o ${HOME}/bin/gimme https://raw.githubusercontent.com/travis-ci/gimme/master/gimme &&\
    chmod +x ${HOME}/bin/gimme

# Install given go version
RUN ${HOME}/bin/gimme ${GO_VERSION}
ENV GOROOT=${HOME}/.gimme/versions/go${GO_VERSION}.linux.amd64 \
    PATH=${HOME}/.gimme/versions/go${GO_VERSION}.linux.amd64/bin:{GOPATH}/bin:${HOME}/bin${PATH} \
    GOPATH=${HOME}/go

RUN chown -R 1001:0 $HOME && \
    chmod -R g+rw $HOME

USER 1001
