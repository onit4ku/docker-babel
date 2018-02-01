# docker-babel
### A Dockerized MERN (Mongo, Express, Node, React) project

Basic mern-stack install application meant to be run along side mongodb (not included in this dockerfile), it includes react-scripts and nodemon for development.

### Installation:

### 1. Install [Docker](https://www.docker.com/).


### 2. Build image from Dockerfile:

    docker build /home/user/projects/docker-babel -t "docker-babel"


### 2. Run `docker-babel` image container:

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

#### Create the network:

    sudo docker network create mynetwork

#### Connect to the network

    docker network connect mynetwork idOrNameContainer
    docker network connect mynetwork idOrNameContainer2
    
    docker network list

~~~


NETWORK ID          NAME                DRIVER              SCOPE
 3afae4a12ba2        bridge              bridge              local
 a775ae96b77b        host                host                local
 1b53f1f984d7        mynetwork           bridge              local
 773be8bbaedb        none                null                local

    docker network inspect mynetwork


> [
    {
        "Name": "mynetwork",
        "Id": "1b53f1f984d7ba552bab94266fe738e2e8d817db35826b97ddbf821ff3d0496b",
        "Created": "2018-02-01T13:29:31.433084174+01:00",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": {},
            "Config": [
                {
                    "Subnet": "172.18.0.0/16",
                    "Gateway": "172.18.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "Containers": {
            "90ce912d80979e7c11795795dc13d028663518e9b892861e6553076baeedbd7b": {
                "Name": "unruffled_nightingale",
                "EndpointID": "08dbcfa7913c199fae3ec512932f603e66d39322aded23d54f00d278ba216961",
                "MacAddress": "02:42:ac:12:00:02",
                "IPv4Address": "172.18.0.2/16",
                "IPv6Address": ""
            },
            "be887ba53a0a39237c187dddb3a77126c625415fd72332693d873446a1216f26": {
                "Name": "priceless_golick",
                "EndpointID": "f0e46208b00141e0295e3f349c035bd4db1d5396907718945f1a2e5710a97f5a",
                "MacAddress": "02:42:ac:12:00:03",
                "IPv4Address": "172.18.0.3/16",
                "IPv6Address": ""
            }
        },
        "Options": {},
        "Labels": {}
    }
]

~~~