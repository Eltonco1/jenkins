FROM centos:7
RUN useradd -m elton -g wheel -s /bin/bash 
#RUN yum -y install httpd
#RUN yum -y install openssh-server
COPY /tawfiq /var/www/html
EXPOSE 22 80
RUN echo "root:elton" | chpasswd
CMD ["/usr/sbin/sshd","-D"]
CMD ["/usr/sbin/httpd","-D"]
