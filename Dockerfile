FROM nginx:alpine

# Clean default html
RUN rm -rf /usr/share/nginx/html/*

# Copy only site content from the folder
COPY personal-blog-website-main/ /usr/share/nginx/html/

# Copy custom nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 3000
EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
