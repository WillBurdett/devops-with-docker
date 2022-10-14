FROM openjdk:8-alpine

WORKDIR /usr/src/app

COPY . .

EXPOSE 8080

RUN ./mvnw package -Dmaven.test.skip

CMD java -jar ./target/docker-example-1.1.3.jar