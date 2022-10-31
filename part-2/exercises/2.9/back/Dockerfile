FROM golang:1.16

WORKDIR /usr/src/app

COPY . . 

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:80

RUN go build

CMD ./server