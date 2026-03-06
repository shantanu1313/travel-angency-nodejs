# Use official Node.js image
FROM node:18

# Create app directory inside container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application source code
COPY . .

# Expose port (change if your app uses different port)
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
