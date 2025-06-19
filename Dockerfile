# Use a lightweight version of Nginx
FROM nginx:alpine

# Clean default html
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site into nginx
COPY . /usr/share/nginx/html

# Expose port 80 (HTTP)
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
