FROM php:7.2-apache

MAINTAINER muzafar <muzfr7@gmail.com>

# Enable Apache Rewrite Module
RUN a2enmod rewrite

# Update packages
RUN apt-get update

# Install nano editor
RUN apt-get install -y nano

# Install git
RUN apt-get install -y git

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy config files
COPY etc/php.ini /usr/local/etc/php/php.ini
COPY etc/000-default.conf /etc/apache2/sites-enabled/000-default.conf