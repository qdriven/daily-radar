#!/bin/sh
## ZfV1MwLNipV3GZvSM4

docker run --name wordpress-db -e MYSQL_ROOT_PASSWORD=password -d mariadb:latest

docker run -p 9000:80 \
 -v site_data:/var/www/html\
 -d wordpress --name qwordpress


 -v "wp-content/themes/:/var/www/html/wp-content/themes" \
 -v "wp-content/plugins/:/var/www/html/wp-content/plugins" \
 

docker run --name qwordpress \
    --link wordpress-db:mariadb -p 9000:80 \
    -e WORDPRESS_DB_USER=root \
    -e WORDPRESS_DB_PASSWORD=password \
     -d wordpress
