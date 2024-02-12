#Use the official Nginx base image
FROM nginx:latest

# Copy custom nginx.conf file to the appropriate directory
COPY nginx.conf /etc/nginx/nginx.conf

# Copy custom index.html file to replace the default Nginx welcome page
COPY index.html /usr/share/nginx/html/index.html

# Create the required directory and set permissions
RUN mkdir -p /var/cache/nginx/ \
    && chmod -R 777 /var/cache/nginx/ \
    && mkdir -p /var/run/nginx/ \
    && chown -R nginx:nginx /var/run/nginx/

    
# Expose port 8081 to allow outside access
EXPOSE 8080
