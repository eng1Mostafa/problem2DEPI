# Use the official Nginx base image
FROM nginx:latest

# Copy custom HTML content to the appropriate directory
COPY html /usr/share/nginx/html

# Copy custom Nginx configuration
COPY conf/default.conf /etc/nginx/conf.d/default.conf

# Expose port 8080
EXPOSE 8080

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
