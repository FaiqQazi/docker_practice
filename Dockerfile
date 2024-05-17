# Use an existing nginx image as the base
FROM nginx:latest

# Copy the contents of the local 'public' directory to the nginx html directory
COPY JoshuaOfosu/public/ /usr/share/nginx/html

# Expose port 80 to allow outside access to our application
EXPOSE 80

# CMD instruction to start nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
