# Gunakan image dasar Ubuntu
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install Node.js dan npm
RUN apt-get update && apt-get install -y nodejs npm

# Install tools tambahan seperti git dan curl
RUN apt-get install -y git curl

# Set working directory
WORKDIR /workspace

# Install dependencies
COPY package.json .
RUN npm install

# Expose port untuk aplikasi web
EXPOSE 3000
