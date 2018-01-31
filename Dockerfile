#
# MERN starter-pack Dockerfile
#
# https://github.com/onit4ku/docker-babel
#

# Pull base image.
FROM ubuntu:latest

# MANTAINER tag
LABEL onit4ku <onitaku@gmail.com>

#  HOME directory that will use the RUN commands.
ENV NODE_ENV development

# Install Essentials.
RUN apt-get update -q \
    && apt-get install -yqq \
    curl \
    git \
    ssh \
    gcc \
    make \
    build-essential \
    libkrb5-dev \
    sudo \
    apt-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install node.
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN sudo apt-get install -yq nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install Nodemon.
RUN npm install --global nodemon --global react-scripts --global foreman

RUN mkdir -p /opt/mern.js

# Add files to the container.
ADD Procfile /opt/mern.js/Procfile
ADD start.sh /scripts/start.sh
RUN chmod +x /scripts/start.sh

# Define working directory.
WORKDIR /opt/mern.js

# Define mountable directories.
VOLUME ["/app/"]

# Define default command.
CMD ["/scripts/start.sh"]

# Expose ports.
EXPOSE 80 443 3000 35729 3001