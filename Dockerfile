# Use a lightweight version of Nginx
FROM nginx:alpine

# Clean default html
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site
COPY . /usr/share/nginx/html

# Copy custom nginx config to override default
COPY nginx.conf /etc/nginx/nginx.conf

# Expose custom port
EXPOSE 3000

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
