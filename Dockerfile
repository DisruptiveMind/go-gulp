from golang:1.6

MAINTAINER tyler@disruptiveart.com


# Install libraries need for packaging
RUN apt-get install bzip2

# Install Node
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

# Install Gulp
RUN npm install -g gulp bower

# Install remaining npm

