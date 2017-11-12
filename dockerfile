FROM centos:6.8
RUN yum update -y
RUN yum install httpd
COPY . /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
