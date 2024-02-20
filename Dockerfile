#Use the official Nginx base image
FROM nginx:alpine

RUN  touch /var/run/nginx.pid && \
     chown -R nginx:nginx /var/cache/nginx /var/run/nginx.pid
USER nginx

# Copy custom index.html file to replace the default Nginx welcome page
COPY  --chown=nginx:nginx  index.html /usr/share/nginx/html/index.html

# Expose port 80 to allow outside access
EXPOSE 80
