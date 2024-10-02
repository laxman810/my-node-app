# Use the official Node.js image.
FROM node:16

# Set the working directory.
WORKDIR /usr/src/app

# Copy package.json and package-lock.json.
COPY src/package*.json ./

# Install dependencies.
RUN npm install

# Copy the rest of the application code.
COPY src/ .

# Expose the port your app runs on.
EXPOSE 3000

# Command to run your application.
CMD ["node", "index.js"]
