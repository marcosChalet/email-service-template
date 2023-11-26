FROM node:lts-alpine3.18

WORKDIR /email-service/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000

CMD [ "npm", "start" ]