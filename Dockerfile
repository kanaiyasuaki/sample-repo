FROM centos:7
RUN yum update -y
RUN yum install -y epel-release
RUN yum install -y http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
RUN yum clean all
RUN yum -y install httpd
RUN yum -y install --enablerepo=remi,remi-php56 php php-devel php-mbstring php-pdo php-gd php-xml php-mcrypt php-pgsql
#COPY ./conf/httpd.conf /etc/httpd/conf/httpd.conf
#COPY ./conf/php.ini /etc/php.ini
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
EXPOSE 80
