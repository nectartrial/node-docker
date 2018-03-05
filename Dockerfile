FROM node:9.7.1-stretch

ADD node-app /node-app
WORKDIR /node-app
RUN npm install && node index.js