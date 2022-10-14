# Start from existing ubuntu image
FROM ubuntu:18.04

WORKDIR /usr/src/app

# Install curl with -y flags to answer yes to installation q's
RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install curl -y

# Copy the script.sh file from the file to /usr/src/app/ (the current container dir) creating /usr/src/app/hello.sh.
COPY script.sh .

# Give permission to run shell script
RUN chmod +x script.sh

# When running docker run the container the entry point will be the shell script
ENTRYPOINT ["./script.sh"]