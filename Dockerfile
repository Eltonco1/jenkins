FROM centos:7
RUN useradd -m tawfiq -g wheel -s /bin/bash 
RUN yum -y install httpd
RUN yum -y install openssh-server
COPY /tawfiq /var/www/html
EXPOSE 22 80
RUN echo "root:tawfiq" | chpasswd
CMD ["/usr/sbin/sshd","-D"]
CMD ["/usr/sbin/httpd","-D"]
