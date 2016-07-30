from golang:1.6

MAINTAINER tyler@disruptiveart.com

# Install Node
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y nodejs

# Install Gulp
RUN npm install -g gulp bower
