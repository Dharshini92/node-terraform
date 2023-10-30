# Use the official Node.js image as the base image
FROM node:14

# Set the working directory within the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install project dependencies in the container
RUN npm install

# Copy all project files to the container
COPY . .

# Expose the port your application will run on
EXPOSE 3000

# Define the command to run your application
CMD ["node", "server.js"]

