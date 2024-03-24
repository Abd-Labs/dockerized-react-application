# set the base image to create the image for react app
FROM node:20-alpine

# Install bash and sudo
RUN apk add --no-cache bash sudo

# Create a new user to run the application
RUN addgroup -g 1001 -S appgroup && \
    adduser -u 1001 -S appuser -G appgroup

# Create the working directory and set ownership to the appuser
WORKDIR /app


# Switch to the appuser
USER root

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

RUN chown -R appuser:appgroup /app


# Copy the rest of the files to the working directory with correct ownership
COPY --chown=appuser:appgroup . .


USER appuser


# Set npm registry
RUN npm config set registry https://registry.npmjs.org/
# Remove proxy and https-proxy
RUN npm config delete proxy
RUN npm config delete https-proxy
RUN rm package-lock.json
# Install dependencies
RUN npm install --verbose



# Expose port 3000 to tell Docker that the container listens on the specified network ports at runtime
EXPOSE 3000

# Command to start the project
CMD ["npm", "start"]

