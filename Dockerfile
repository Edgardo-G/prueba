FROM node:16.4-alpine3.14

WORKDIR /app 

COPY package*.json ./

RUN npm install

RUN npm run build

COPY ./build .

CMD ["node", "build.js"]

EXPOSE 9000
