FROM centos:centos7.6.1810

ARG BUILDDIR="/tmp/build"
WORKDIR ${BUILDDIR}

RUN yum -y update
RUN yum -y install epel-release && yum clean all

RUN yum -y groupinstall development
RUN yum -y install firefox htop openssl openssl-devel \
postfix python36 python36-devel python36-pip \
sqlite-devel vim wget zlib-devel \

rm -rf ${BUILDDIR}

CMD ["/bin/bash"]
