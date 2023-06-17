FROM debian:buster

# Install NGINX
RUN apt-get update && apt-get install -y nginx

# Copy NGINX configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy HTML files
COPY index.html /var/www/html/index.html

# Expose port 80
EXPOSE 443

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
