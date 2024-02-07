FROM centos:8
RUN yum -y update
RUN yum install openjdk-11-devel
RUN yum install -y httpd
EXPOSE 80

