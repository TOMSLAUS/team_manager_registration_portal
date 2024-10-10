# Use a lightweight Nginx image
FROM nginx:alpine

RUN ls
RUN ls build/web
RUN ls /usr/share/nginx/html
# Copy the built Flutter web app to the web server directory
COPY build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Command to start Nginx and serve the Flutter web app
CMD ["nginx", "-g", "daemon off;"]
