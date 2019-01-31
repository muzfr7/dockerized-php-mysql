## DOCKERIZED PHP | MYSQL

### Usage
```
// 1. Use following command to clone this repository
$ git clone https://github.com/muzfr7/dockerized-php-mysql.git

// 2. Rename the repository to anything in this case I'm renaming it to `blog`
$ mv dockerized-php-mysql ./blog

// 3. Now change directory into `blog`
$ cd blog

// 4. Change container names in `docker-compose.yml` file to reflect our project name

// 5. Change `ServerName` and `DocumentRoot` in `etc/000-default.conf`

// 6. Finaly run following Docker command to start containers
$ docker-compose up -d

// 7. Check if containers are running
$ docker ps
```

### What's Included
```
php:7.1-apache
mysql:5.7
composer
nano
git
zlib1g-dev
zip
pdo_mysql
mysqli
libxslt-dev
xsl
libicu-dev
intl
```

### Author
Muzafar Ali Jatoi <muzfr7@gmail.com>