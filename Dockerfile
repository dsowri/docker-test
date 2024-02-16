#Use the official Nginx base image
FROM nginx:latest

# Copy custom index.html file to replace the default Nginx welcome page
COPY index.html /usr/share/nginx/html/index.html
    
# Expose port 80 to allow outside access
EXPOSE 80

CMD ["sh", "-c", "tail -f /dev/null"]
