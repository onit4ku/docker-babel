# docker-babel
### A Dockerized MERN (Mongo, Express, Node, React) project

Basic mern-stack install application meant to be run along side mongodb, it includes react-scripts and nodemon for development.

### Installation:

### 1. Install [Docker](https://www.docker.com/).


### 2. Build image from Dockerfile:

    docker build /home/user/projects/docker-babel -t "docker-babel"

### Installation of MongoDB docker:

    docker pull mongo

Documentation: 
https://store.docker.com/images/mongo


#### Cmpile & Run

    sudo docker build -t my_mongodb .

    sudo docker run -p 27017:27017 -i -t my_mongodb

#### Run `mongo` w/ persistent/shared directory

    docker run -d -p 27017:27017 -v <db-dir>:/data/db --name mongodb
