# 1. Use an appropriate lightweight web server base image
FROM nginx:alpine

# 2. Copy the website files into the correct web server document root
COPY . /usr/share/nginx/html

# 3. Expose the web server's container port
EXPOSE 80

# 4. Ensure the web server starts when the container runs
CMD ["nginx", "-g", "daemon off;"]
