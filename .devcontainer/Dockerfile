# Gunakan image dasar dari Ubuntu
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Update dan install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    lsb-release \
    apt-transport-https \
    ca-certificates \
    gnupg \
    software-properties-common \
    git \
    nodejs \
    npm \
    docker.io \
    docker-compose

# Install Docker Compose (versi terbaru)
RUN curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose

# Set working directory
WORKDIR /workspace

# Install Node.js dependencies
COPY package.json .
RUN npm install

# Expose port untuk aplikasi web
EXPOSE 3000