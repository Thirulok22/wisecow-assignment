
# Use the official Node.js image as a base
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Install necessary packages
RUN apt-get update && apt-get install -y cowsay fortune && apt-get clean

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on
EXPOSE 4499

# Command to run your application
CMD ["bash", "wisecow.sh"]
