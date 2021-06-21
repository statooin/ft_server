# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run.sh                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: statooin <statooin@student.21-school.ru>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/27 21:57:56 by statooin          #+#    #+#              #
#    Updated: 2020/06/27 22:04:39 by statooin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

service nginx start
service php7.3-fpm start
service mysql start

sleep infinity;
