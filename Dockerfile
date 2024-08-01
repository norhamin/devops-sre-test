# Use an official Node runtime as the parent image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the application code
COPY . .

# Make port 3000 available outside the container
EXPOSE 30000

# Define the command to run the app
CMD [ "npm", "start" ]
