# Use the official Node.js image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on (default: 5000, or whatever you set in the env)
EXPOSE 5000

# Set environment variables for production (these can also be passed via a .env file)
ENV PORT=5000

# Command to run the backend server
CMD ["node", "server.js"]
