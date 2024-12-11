# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install the dependencies inside the container
RUN npm install

# Copy the rest of your application files into the container
COPY . .

# Expose port 8080, as that's where the app will run
EXPOSE 8080

# Define the command to run the app
CMD ["node", "server.js"]
