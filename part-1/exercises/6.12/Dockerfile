FROM node:16-alpine

WORKDIR /usr/src/app

COPY . .

RUN npm install

RUN npm run build

RUN npm install -g serve

ENV LC_ALL=C.UTF-8

EXPOSE 5000

CMD serve -s -l 5000 build