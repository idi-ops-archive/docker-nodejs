FROM inclusivedesign/centos:7

ENV NODEJS_VERSION 0.10.33

RUN yum -y install nodejs-${NODEJS_VERSION} npm \
 && yum clean all

CMD ["/bin/bash"]
