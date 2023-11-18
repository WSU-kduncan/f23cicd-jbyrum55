# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files into the container
COPY website/MyWebsite/ /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the Nginx server
CMD ["nginx", "-g", "daemon off;"]

