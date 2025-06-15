FROM node:20-bullseye

# Set working directory inside container
WORKDIR /app

# Copy all files from local bundle
COPY . /app

# Install server dependencies
WORKDIR /app/programs/server
RUN npm install

# Expose the port Meteor app will listen on
EXPOSE 3000

# Start the server
CMD ["node", "main.js"]

#Dockerfile for Meteor app
# This Dockerfile is designed to build a Docker image for a Meteor application.
# It uses the official Node.js image as a base and sets up the application environment.                 