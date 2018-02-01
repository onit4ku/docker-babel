# docker-babel
### A Dockerized MERN (Mongo, Express, Node, React) project

Basic mern-stack install application meant to be run along side mongodb (not included in this dockerfile), it includes react-scripts and nodemon for development.

### Installation:

### 1. Install [Docker](https://www.docker.com/).


### 2. Build image from Dockerfile:

    docker build /home/user/projects/docker-babel -t "docker-babel"


### 3. Run `docker-babel` image container:

    docker run -i -t docker-babel:latest /bin/bash


### (Optional) Installation of MongoDB docker:

    docker pull mongo

Documentation: 
https://store.docker.com/images/mongo


#### Cmpile & Run

    sudo docker build -t my_mongodb .

    sudo docker run -p 27017:27017 -i -t my_mongodb

#### Run `mongo` w/ persistent/shared directory

    docker run -d -p 27017:27017 -v <db-dir>:/data/db --name mongodb


### Create and connect Containers

You can use docker-compose to link multiple containers so they have visibility between them.

> Official documentation: https://docs.docker.com/compose/

Or you can use docker to create a network and join the different containers that are running:

> Official documentation: https://docs.docker.com/engine/reference/commandline/network/

#### Create the connection using the network command:

    sudo docker network create mynetwork

#### Connect to the network

    docker network connect mynetwork idOrNameContainer

    docker network connect mynetwork idOrNameContainer2

container1 and container2 could communicate now