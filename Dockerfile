# Use a lightweight Nginx image
FROM nginx:alpine

# Copy the built Flutter web app to the web server directory
COPY build/web /
#COPY build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Command to start Nginx and serve the Flutter web app
CMD ["nginx", "-g", "daemon off;"]
