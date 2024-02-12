#Use the official Nginx base image
FROM nginx:latest

# Copy custom index.html file to replace the default Nginx welcome page
COPY index.html /usr/share/nginx/html/index.html

# Apply permissions to the directory
RUN mkdir -p /var/cache/nginx/client_temp \
    && chmod -R 777 /var/cache/nginx/client_temp \
    && mkdir -p /var/cache/nginx/proxy_temp \
    && chmod -R 777 /var/cache/nginx/proxy_temp \
    && mkdir -p /var/cache/nginx/fastcgi_temp \
    && chmod -R 777 /var/cache/nginx/fastcgi_temp
    && mkdir -p /var/cache/nginx/uwsgi_temp \
    && chmod -R 777 /var/cache/nginx/uwsgi_temp

    
# Expose port 80 to allow outside access
EXPOSE 80
