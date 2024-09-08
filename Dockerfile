FROM arm64v8/php:8.2-fpm

RUN apt-get update \
 && apt-get install --assume-yes --no-install-recommends --quiet \
    build-essential \
 && apt-get clean all

RUN docker-php-ext-install pdo_mysql mysqli
