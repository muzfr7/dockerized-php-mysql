FROM php:7.1-apache

MAINTAINER muzafar <muzfr7@gmail.com>

# Enable Apache Rewrite Module
RUN a2enmod rewrite

# Update packages
RUN apt-get update

# To resolve apt-utils issue
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

# Install nano editor
RUN apt-get install -y nano

# Install git
RUN apt-get install -y git

# Install Zip
RUN apt-get install -y zlib1g-dev
RUN docker-php-ext-install zip

# Install PDO
# RUN apt-get install -y freetds-dev php5-sybase
# RUN docker-php-ext-install pdo 
RUN docker-php-ext-install pdo_mysql
# RUN docker-php-ext-install pdo_oci
# RUN docker-php-ext-install pdo_odbc
# RUN apt-get install -y libpq-dev
# RUN docker-php-ext-install pdo_pgsql
# RUN apt-get install -y libsqlite3-dev
# RUN docker-php-ext-install pdo_sqlite

# Install MySQLi
RUN docker-php-ext-install mysqli

# Install XSL
RUN apt-get install -y libxslt-dev
RUN docker-php-ext-install xsl

# Install xmlrpc
# RUN docker-php-ext-install xmlrpc

# Install intl
RUN apt-get install -y libicu-dev
RUN docker-php-ext-install intl

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy config files
COPY etc/php.ini /usr/local/etc/php/php.ini
COPY etc/000-default.conf /etc/apache2/sites-enabled/000-default.conf