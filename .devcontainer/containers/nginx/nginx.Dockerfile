# Use the official Nginx image
FROM nginx:latest

# Set project-related environment variables
# ENV COMPOSE_PROJECT_NAME=${COMPOSE_PROJECT_NAME}
# ENV CONTAINERS_CONFIGDIR=${CONTAINERS_CONFIGDIR}

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
