FROM centos:7
RUN yum install -y httpd
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
COPY index.html /var/www/html/
EXPOSE 80
