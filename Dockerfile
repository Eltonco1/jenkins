FROM centos:7

RUN yum -y install httpd
RUN yum -y install openssh-server openssh-clients

COPY ./tawfiq/ /var/www/html

EXPOSE 80, 22

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
