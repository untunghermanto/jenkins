FROM centos:latest

RUN yum -y upgrade
RUN yum -y install httpd

#COPY index.html /usr/local/apache2/htdocs/
COPY index.html /var/www/html/
CMD apachectl -D FOREGROUND
EXPOSE 80
