FROM centos:7

MAINTAINER MKFMIKU <mikumkf@outlook.com>

COPY mongodb-org-3.2.repo /etc/yum.repos.d/mongodb-org-3.2.repo

RUN sudo yum install -y mongodb-org

RUN curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -
RUN yum install gcc-c++ make
RUN yum -y install nodejs


