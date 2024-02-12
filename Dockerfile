#Use the official Nginx base image
FROM nginx:latest

# Copy custom index.html file to replace the default Nginx welcome page
COPY index.html /usr/share/nginx/html/index.html

# Create the required directory and set permissions
RUN mkdir -p /var/cache/nginx/ \
    && chmod -R 777 /var/cache/nginx/
    
# Expose port 80 to allow outside access
EXPOSE 80
