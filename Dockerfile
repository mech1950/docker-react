# Multi-step build file

# Build phase:
# Base image
FROM node:alpine as builder

# Get the configuration files and build the image
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# Run phase:
FROM nginx
# Copy the files from /app/build in the builder phase to the location the nginx documentation says it needs.
COPY --from=builder /app/build /usr/share/nginx/html

# default command for the nginx container is to start nxinx, so we're done here