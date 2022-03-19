FROM wyveo/nginx-php-fpm:latest

COPY . /usr/share/nginx/html

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

COPY ./db/ /docker-entrypoint-initdb.d/

WORKDIR /usr/share/nginx/html

RUN ln -s public html
RUN php  artisan storage:link

#RUN apt update && apt install vim -y

#RUN composer install --no-dev

EXPOSE 80
