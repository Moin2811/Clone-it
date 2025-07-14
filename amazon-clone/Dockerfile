# Use official Node.js image
FROM node:18-alpine AS build

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Copy the rest of your application
COPY . .

# Build the app
RUN yarn build

# Use Nginx to serve the build
FROM nginx:stable-alpine
COPY --from=build /app/build /usr/share/nginx/html

# Copy custom nginx config if needed
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
