# Start from the ubuntu image
FROM ubuntu:20.04

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

RUN apt-get update 
RUN apt-get upgrade 
RUN apt-get install curl -y

# Copy the search.sh file from this location to /usr/src/app/ creating /usr/src/app/search.sh.
COPY search.sh .

# Grant access to run search.sh command
RUN chmod +x search.sh

# When running docker run the command will be ./search.sh
CMD ./search.sh