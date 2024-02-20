#Use the official Nginx base image
FROM nginx:latest

# Replace default nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Copy custom index.html file to replace the default Nginx welcome page
COPY  index.html /usr/share/nginx/html/index.html

# Expose port 8081 to allow outside access
EXPOSE 8081
