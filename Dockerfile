# Base image
FROM nginx:alpine

# Maintainer info (optional)
LABEL maintainer="yourname@example.com"

# Remove default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files to Nginx html folder
COPY . /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 3000

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
