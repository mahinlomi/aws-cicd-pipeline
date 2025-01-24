FROM node:latest

WORKDIR /

RUN apt-get update

# INSTALL SOURCE
COPY package*.json ./

RUN npm install
RUN npm install -g pm2@latest

# Copy source
COPY . .

EXPOSE 3000

CMD ["pm2-runtime", "server.js"]