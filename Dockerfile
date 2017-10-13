FROM centos:centos7
MAINTAINER Bryan Yang <kenshin2004528@gmail.com>

RUN yum -y update; yum -y install yum-utils; yum -y groupinstall development
RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm &&\ 
    yum install -y python36u python36u-pip python36u-devel git &&\ 
    yum clean all

RUN ln -sf /usr/bin/python3.6 /usr/bin/python
USER root
CMD ["/bin/bash"]
