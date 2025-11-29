FROM node:18

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your backend
COPY . .

# Expose your backend port
EXPOSE 3001

# Start the server
CMD ["node", "server.js"]
