FROM centos:7

MAINTAINER MKFMIKU <mikumkf@outlook.com>

ADD https://raw.githubusercontent.com/MKFMIKU/Docker/master/mongodb-org-3.2.repo /etc/yum.repos.d/mongodb-org-3.2.repo

RUN yum install -y mongodb-org

RUN curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -
RUN yum -y install gcc-c++ make
RUN yum -y install nodejs
RUN yum -y install git
RUN npm install pm2 -g

RUN git clone https://github.com/MKFMIKU/DormitoryD.git

RUN cd DormitoryD; npm install --save

ADD https://raw.githubusercontent.com/MKFMIKU/Docker/master/run.sh /home/run.sh

EXPOSE 5000

CMD ["sh", "/home/run.sh"]
