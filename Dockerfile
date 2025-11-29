# Use Node 20 to match package.json
FROM node:20

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the backend
COPY . .

# Expose backend port
EXPOSE 3001

# Start the server
CMD ["node", "backend/server.js"]
