# Build Stage
# First pull Golang image
FROM golang:1.18 as build-env
 
# Set environment variable
ENV APP_NAME note-generator-backend
ENV CMD_PATH httpd/cmd/main.go
 
# Copy application data into image
COPY . $GOPATH/src/$APP_NAME
WORKDIR $GOPATH/src/$APP_NAME
 
# Build application
RUN CGO_ENABLED=0 go build -v -o /$APP_NAME $GOPATH/src/$APP_NAME/$CMD_PATH
 
# Run Stage
FROM alpine:3.14
 
# Set environment variable
ENV APP_NAME note-generator-backend
 
# Copy only required data into this image
COPY --from=build-env /$APP_NAME .
 
# Expose application port
EXPOSE 3300
 
# Start app
CMD ./$APP_NAME

# docker build --tag note-back . 
# docker run --name note-back -p 3300:3300 note-back 

# https://www.bacancytechnology.com/blog/dockerize-golang-application 
