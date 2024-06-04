# Use an official Node runtime as a parent image
# FROM node:14

# # Set the working directory in the container
# WORKDIR /app

# # Copy the current directory contents into the container at /app
# COPY . /app

# # Install any needed packages
# RUN npm install

# # Build the app for production
# RUN npm run build

# # Install a simple HTTP server to serve the static files
# RUN npm install -g http-server

# # Expose port 8080 to the world outside this container
# EXPOSE 8080

# # Start the HTTP server
# CMD ["http-server", "build", "-p", "8080"]
#===============================================================================
FROM node:14

WORKDIR /app

COPY . /app

RUN npm install

RUN npm run build

FROM nginx:alpine
COPY --from=0 /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
