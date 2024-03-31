FROM centos:7
RUN useradd -m tawfiq -g wheel -s /bin/bash 
RUN cp ./tawfiq /var/www/html
EXPOSE 22 80
RUN echo "root:tawfiq" | chpasswd
CMD ["/usr/sbin/sshd","-D"]
CMD ["/usr/sbin/httpd","-D"]
