FROM centos:7
RUN yum install -y httpd
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND", "-f", "/etc/httpd/conf/httpd.conf"]
COPY index.html /var/www/html/
EXPOSE 80
