# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Copy your custom Nginx configuration file to the container
# If you have a custom nginx.conf, replace /etc/nginx/nginx.conf
# Otherwise, you can also copy specific config files into /etc/nginx/conf.d/
## COPY ./nginx.conf /etc/nginx/nginx.conf

# Copy your static website or application files to the default Nginx folder
# (Assuming you have an HTML or app in the ./html folder)
## COPY ./html /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

