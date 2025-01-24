# Gunakan Node.js sebagai base image
FROM node:16

# Install dependencies untuk server
WORKDIR /workspace
COPY package.json .
RUN npm install

# Expose port untuk server
EXPOSE 3000

# Jalankan server saat container dimulai
CMD ["npm", "start"]