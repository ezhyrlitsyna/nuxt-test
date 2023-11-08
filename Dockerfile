# Use an official Node.js runtime as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /app


# Copy package.json and yarn.lock to the container
COPY package.json yarn.lock ./

# Install project dependencies using Yarn and build the Nuxt.js project for production using Yarn
RUN yarn install

# Copy the rest of your Nuxt.js project to the container
COPY . .

# Build the Nuxt.js project for production using Yarn
RUN yarn nuxt build


# Expose the port your Nuxt.js application will run on (default: 3000)
EXPOSE 3000

# Serve the Nuxt.js application
CMD [serve -s build -l 3000]