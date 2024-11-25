# Use the official Node.js image
FROM node:22

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if you have it) first to leverage Docker cache
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Run the app
CMD ["node", "index.js"]
