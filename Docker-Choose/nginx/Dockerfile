#FROM ubuntu:16.04
FROM pre_choose:v1

ARG ip_host
ENV MEMCACHED_USER=xxx \
    IP_HOST=$ip_host

#COPY ./default /etc/nginx/sites-available/

RUN apt-get install -y git \
    && apt-get -y install nginx \
    && apt-get -y install supervisor

#COPY ./default /etc/nginx/sites-available/

RUN useradd -m xxx
    #&& apt-get install curl \
    #&& curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

USER xxx
RUN cd /home/xxx \
    && git clone xxx \
    && cd Choose \
    && git fetch --all \
    && git checkout -b dev origin/dev \
    && git pull origin dev \
    && sed -i 's/xxx/ooo/g' .gitmodules \
    && git submodule init \
    && git submodule update \
    && cd frontend \
    && git fetch --all \
    && git checkout -b dev origin/dev \
    && git pull origin dev \
    && cd /home/xxx/Choose \
    #&& composer install \
    && echo 'APP_ENV=staging' > /home/xxx/Choose/.env \
    && sed -i "s/apiUrl: \"xxx\",/apiUrl: \"http:\/\/$IP_HOST\",/g" /home/xxx/Choose/frontend/test/public/js/codes.js
  
USER root
#COPY ./entrypoint.sh /entrypoint.sh
RUN adduser www-data xxx \
    && cd /home/xxx \
    && chown -R xxx:www-data Choose

#CMD ["nginx", "-g", "daemon off;"]
#CMD ["php-fpm7.1","-F","--pid","/run/php/php7.1-fpm.pid","-y","/etc/php/7.1/fpm/fpm.conf"]
#CMD php-fpm7.1 -F --pid /run/php/php-fpm.pid -y /etc/php/7.1/fpm/php-fpm.conf ; nginx -g daemon off
#CMD ["sh", "-c", "php-fpm7.1 -F --pid /run/php/php-fpm.pid -y /etc/php/7.1/fpm/php-fpm.conf ; nginx -g daemon off"]
#CMD ["php-fpm7.1"]
#ENTRYPOINT ["/entrypoint.sh"]

# supervisor is to 
COPY ./supervisor/supervisord.conf /etc/supervisor/conf.d/
COPY ./supervisor/init.d/* /autostart/

# Define working directory.
#WORKDIR /data

EXPOSE 80
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]

#COPY ./entrypoint.sh /sbin/entrypoint.sh
#ENTRYPOINT ["/sbin/entrypoint.sh"]
