# Set the base image.
FROM node:lts-alpine as build-stage
# Create and define the node_modules's cache directory.
RUN mkdir /usr/src && mkdir /usr/src/cache
WORKDIR /usr/src/cache

# Install the application's dependencies into the node_modules's cache directory.
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Create and define the application's working directory.
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ADD ./entrypoint.sh /docker-entrypoint-initfront.d/

FROM httpd:2.4.48 as web
#dependencies and utilities
RUN apt-get update && apt-get install -y \
    build-essential \
    zip \
    vim \
    unzip \
    iputils-ping \
    git \
    npm \
    curl
