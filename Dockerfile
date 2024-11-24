FROM socialengine/nginx-spa:latest

# Copy the built Flutter web app into the Docker container
COPY ./build/web /app

# Set the permissions (optional, depending on your needs)
RUN chmod -R 777 /app

# Expose the default HTTP port (80)
EXPOSE 80
