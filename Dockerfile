FROM node:18

WORKDIR /app

# Copy global package.json
COPY package*.json ./

# Install backend folder dependencies
RUN cd backend && npm install

# Copy everything
COPY . .

EXPOSE 3001

CMD ["node", "backend/server.js"]
