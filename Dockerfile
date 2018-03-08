FROM alpine:edge
RUN \
echo http://dl-4.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
apk add --update nodejs nodejs-npm

ADD node-app /node-app
WORKDIR /node-app
RUN npm install
EXPOSE 3000
CMD node index.js   