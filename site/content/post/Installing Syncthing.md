+++
Categories = ["Development","GoLang"]
Description = ""
Tags = ["Development","golang"]
date = "2017-05-30T10:59:24+10:00"
menu = "main"
title = "Installing Syncthing"

+++
[Home](http://localhost:1313/)
## Installation on Mac

I installed Syncthing as a docker container on mac

```bash
$ docker pull syncthing/syncthing
$ mkdir ~/code/syncthing
$ cd ~/code/syncthing
$ mkdir build
$ cd build
$ touch Docker-compose.yml
```

## My Docker-compose file looks like below

This is what was I did

```bash

version: '2'
services:
  syncthing:
    image: syncthing/syncthing:latest
    ports:
      - "8384:8384"
      - "22000:22000"
    volumes:
      - "./st-cfg:/var/syncthing/config"
      - "./st-sync:/var/syncthing/Sync"
    restart: unless-stopped

```
My Folder Structure

```bash

.
└── build
    ├── docker-compose.yml
    ├── st-cfg
    │   ├── cert.pem
    │   ├── config.xml
    │   ├── csrftokens.txt
    │   ├── https-cert.pem
    │   ├── https-key.pem
    │   ├── index-v0.14.0.db
    │   │   ├── 000002.ldb
    │   │   ├── 000003.log
    │   │   ├── CURRENT
    │   │   ├── LOCK
    │   │   ├── LOG
    │   │   └── MANIFEST-000004
    │   └── key.pem
    └── st-sync
```

## Creating a Syncthing docker image



**Sites used to build the docker-compose**

- [Syncthing Docker Hub](https://hub.docker.com/r/syncthing/syncthing/)

## TODO
- Persistent storage or docker volumes
- Improve the security architecture of Docker using overlay networking ( backend /frontend)
- externalise ENV paramaters
- introduce NGNIX reverse proxy [Jason Wilder's Repo ](https://github.com/jwilder/nginx-proxy)
- [automated-nginx-reverse-proxy-for-docker](http://jasonwilder.com/blog/2014/03/25/automated-nginx-reverse-proxy-for-docker/)
