# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: statooin <statooin@student.21-school.ru>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/08 02:36:44 by statooin          #+#    #+#              #
#    Updated: 2020/06/28 01:07:05 by statooin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get upgrade -y

# Install progs
RUN apt-get -y install wget
RUN apt-get -y install nginx
RUN apt-get -y install mariadb-server
RUN apt-get -y install php7.3 php-mysql php-fpm php-cli php-mbstring

# Install nginx
COPY ./srcs/nginx.conf /etc/nginx/sites-available/localhost
RUN ln -s -f /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/localhost

# Install phpmyadmin
WORKDIR /var/www/localhost/
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.5/phpMyAdmin-4.9.5-english.tar.gz
RUN tar -xf phpMyAdmin-4.9.5-english.tar.gz
RUN rm -rf phpMyAdmin-4.9.5-english.tar.gz && mv phpMyAdmin-4.9.5-english phpmyadmin
COPY ./srcs/config.inc.php phpmyadmin

# Install wordpress and mysql
COPY ./srcs/wordpress.tar .
RUN tar -xf wordpress.tar
RUN rm -rf wordpress.tar
COPY ./srcs/wp-config.php wordpress
COPY ./srcs/wordpress.sql /var/
COPY ./srcs/mysql_conf.sql /var/
RUN service mysql start && mysql -u root mysql < /var/mysql_conf.sql && mysql wordpress -u root --password=  < /var/wordpress.sql

# Openssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj '/C=RU/ST=Moscow/L=Moscow/O=School21/CN=statooin' \
	-keyout /etc/ssl/certs/localhost.key -out /etc/ssl/certs/localhost.crt

# Misc
RUN chown -R www-data:www-data /var/*
RUN chmod 777 -R /var/* && chmod 755 /var/www/localhost/phpmyadmin/config.inc.php
RUN rm /etc/nginx/sites-enabled/default

COPY ./srcs/run.sh /var/
COPY ./srcs/autoindex.sh /
EXPOSE 80 443
CMD bash /var/run.sh
