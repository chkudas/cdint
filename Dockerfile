FROM centos:latest
RUN yum install httpd -y && yum clean all
COPY index.html /var/www/html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
