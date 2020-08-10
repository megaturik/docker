from nginx:latest
ENV DEBIAN_FRONTEND noninteractive
COPY start-php.sh /docker-entrypoint.d/30-start-php.sh
COPY demo.conf /etc/nginx/conf.d/demo.conf
RUN rm /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/www/demo
COPY index.php /var/www/demo
RUN apt-get update && apt-get install php7.3-fpm -y
RUN sed -i 's/www-data/nginx/g' /etc/php/7.3/fpm/pool.d/www.conf
