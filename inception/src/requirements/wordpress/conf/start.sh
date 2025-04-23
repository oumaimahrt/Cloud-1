#!/bin/bash

# Export environment variables
export WORDPRESS_DB_HOST=${WORDPRESS_DB_HOST}
export WORDPRESS_DB_USER=${WORDPRESS_DB_USER}
export WORDPRESS_DB_PASSWORD=${WORDPRESS_DB_PASSWORD}
export WORDPRESS_DB_NAME=${WORDPRESS_DB_NAME}

# Start PHP-FPM
exec /usr/sbin/php-fpm7.3 -F