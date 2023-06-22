FROM debian:buster

# Install NGINX
RUN apt-get update && apt-get install nginx openssl -y

RUN openssl req -x509 -nodes -newkey rsa:4096 -keyout /etc/nginx/conf.d/localhost.key -out /etc/nginx/conf.d/localhost.crt \
	-sha256 -days 365 -subj "/CN=yobenali.42.fr"

# Copy NGINX configuration file
COPY ./conf/nginx.conf /etc/nginx/conf.d/

# Copy HTML files
COPY /tools/index.html /var/www/html/index.html


# Expose port 80
EXPOSE 443

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
