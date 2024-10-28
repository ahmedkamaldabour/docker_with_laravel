FROM php:8.2-fpm-alpine

# Set the working directory to the absolute path
WORKDIR /var/www/html

COPY src .

# Install PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

RUN chown -R www-data:www-data /var/www/html
