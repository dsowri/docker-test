#Use the official Nginx base image
FROM nginx:latest

# Copy custom index.html file to replace the default Nginx welcome page
COPY index.html /usr/share/nginx/html/index.html
    
# Expose port 8080 to allow outside access
EXPOSE 8080
