FROM centos:7

ADD sensu_repo.repo /etc/yum.repos.d/sensu_repo.repo
RUN yum update -y && yum install -y sensu rubygems python

ADD run.sh
CMD run.sh