# Use a lightweight web server as the base image
FROM nginx:alpine

# Copy the HTML file to the default Nginx public directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 80

# Command to start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
