FROM centos:7

MAINTAINER MKFMIKU <mikumkf@outlook.com>

COPY mongodb-org-3.2.repo /etc/yum.repos.d/mongodb-org-3.2.repo

RUN yum install -y mongodb-org

RUN curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -
RUN yum -y install gcc-c++ make
RUN yum -y install nodejs
RUN yum -y install git

RUN git clone https://github.com/MKFMIKU/DormitoryD.git

RUN cd DormitoryD; npm install --save

EXPOSE 5000

CMD ["run.sh"]
