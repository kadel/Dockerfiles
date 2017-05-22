FROM centos:7

RUN yum install -y epel-release && \
    yum install -y nodejs npm && \
    yum clean all

ENV LOUNGE_VERSION v2.3.0-rc.2
ENV NODE_ENV production

# Install thelounge.
RUN npm install -g thelounge@${LOUNGE_VERSION} && \
    npm cache clean

# Expose HTTP.
ENV PORT 9000
EXPOSE ${PORT}



ENV LOUNGE_HOME "/home/lounge/data"
RUN mkdir -p "${LOUNGE_HOME}"
VOLUME "${LOUNGE_HOME}"


ENTRYPOINT ["lounge"]
