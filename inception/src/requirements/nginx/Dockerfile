FROM debian:buster
RUN apt-get update -y -qq
RUN apt-get upgrade -y -qq
RUN apt-get install nginx -y -qq
COPY conf/default /etc/nginx/sites-available/
RUN apt-get install openssl
COPY tools/nginx-ip1.crt /etc/ssl/certs/
# COPY tools/nginx-ip2.crt /etc/ssl/certs/
COPY tools/nginx-ip1.key etc/ssl/private/
# COPY tools/nginx-ip2.key etc/ssl/private/
COPY tools/self-signed.conf /etc/nginx/snippets
RUN chown -R www-data:www-data /var/www
RUN find /var/www/ -type d -exec chmod 755 {} \;
RUN find /var/www/ -type f -exec chmod 644 {} \;
CMD ["nginx", "-g", "daemon off;"]