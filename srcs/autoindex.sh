# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    autoindex.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: statooin <statooin@student.21-school.ru>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/27 18:26:42 by statooin          #+#    #+#              #
#    Updated: 2020/06/28 01:04:41 by statooin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

if grep -q "autoindex on" /etc/nginx/sites-enabled/localhost

then
	awk '{sub(/autoindex on/,"autoindex off")}1' /etc/nginx/sites-enabled/localhost > temp.txt && mv temp.txt /etc/nginx/sites-enabled/localhost && echo "autoindex off"
else
	awk '{sub(/autoindex off/,"autoindex on")}1' /etc/nginx/sites-enabled/localhost > temp.txt && mv temp.txt /etc/nginx/sites-enabled/localhost && echo "autoindex on"
fi

nginx -s reload
