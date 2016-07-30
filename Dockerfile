from golang:1.6

MAINTAINER tyler@disruptiveart.com


# Install libraries need for packaging
RUN apt-get update
RUN apt-get install -y bzip2 makeself

# Install Node
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

# Install Gulp
RUN npm install -g gulp bower jshint karma phantomjs

# Install remaining npm

