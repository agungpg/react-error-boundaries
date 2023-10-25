# Use an official Node.js runtime as the base image
FROM node:18

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire project to the container
COPY . .

# Build the React app for production
RUN npm run build

# Expose a port (default is 4173) on which the app will run
EXPOSE 4173

# Define the command to start the application
CMD ["npm", "preview"]
