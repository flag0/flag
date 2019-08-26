FROM ubuntu:14.04
MAINTAINER flag0 "root@flag0.com"
RUN apt-get update && apt-get install -y apache2
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D","FOREGROUND"]
