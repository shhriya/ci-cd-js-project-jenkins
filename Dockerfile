# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy only the package.json and package-lock.json first (to leverage Docker cache for npm install)
COPY package*.json ./

# Install dependencies (separating this step to take advantage of Docker cache)
RUN npm install

# Copy the rest of the application code (after installing dependencies)
COPY . .

# Expose port (if your app listens on port 3000, otherwise change it)
EXPOSE 3000

# Start app
CMD ["npm", "start"]
