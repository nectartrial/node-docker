FROM node:9.7.1-stretch

ADD node-app /node-app
WORKDIR /node-app
RUN npm install
EXPOSE 3000
CMD node index.js