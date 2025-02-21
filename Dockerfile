# Use the official Nginx base image
FROM nginx:latest

# Remove the default Nginx welcome page
RUN rm /usr/share/nginx/html/index.html

# Copy the custom HTML file to the Nginx web directory
COPY index.html /usr/share/nginx/html/

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
