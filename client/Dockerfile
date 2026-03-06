# Use the official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the application code
COPY . .

# Expose the port that Vite runs on
EXPOSE 5173

# Define the command to run the application
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"] 