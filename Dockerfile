FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --omit=dev

copy . .

EXPOSE 3030

CMD ["node", "index.js"]