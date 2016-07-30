from golang:1.6

MAINTAINER tyler@disruptiveart.com


# Install libraries need for packaging
RUN apt-get update
RUN apt-get install -y bzip2 makeself

# Install Node
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

# Install Gulp
RUN npm install -g gulp@3.9.0 bower jshint karma phantomjs

# Install remaining npm
RUN npm install -g graceful-fs@4.0.0 babel-core@6.3.26 babel-preset-es2015@6.3.13 babelify7.2.0 \
brfs@1.2.0 browserify@12.0.0 browser-sync@2.7.6 imagemin-pngcrush@4.1.0 gulp-sass@2.0.4

# Install go dependencies
RUN go get github.com/smartystreets/goconvey

# Generate a key
RUN mkdir /root/.ssh
RUN ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''
