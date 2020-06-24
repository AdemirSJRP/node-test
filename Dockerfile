FROM node:12.14.0-alpine3.11

USER node

RUN mkdir -p /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

COPY . .

ENTRYPOINT ["node", "index.js"]
