+++
Categories = ["Development","GoLang"]
Description = ""
Tags = ["Development","golang"]
date = "2017-06-1T23:41:12+10:00"
menu = "main"
title = "Using DNS as a docker container"

+++
[Home](http://localhost:1313/)
## Installation on Mac

I followed this blog post by Sameer

LINK : [deploying-a-dns-server-using-docker] (http://www.damagehead.com/blog/2015/04/28/deploying-a-dns-server-using-docker/)

As shown below, I make use of a docker-compose file located under ~/code/docker/dns/



```
version: '2'

services:
  bind:
    restart: always
    image: sameersbn/bind:9.9.5-20170129
    ports:
    - "53:53/udp"
    - "53:53/tcp"
    - "10000:10000/tcp"
    volumes:
    - /srv/docker/bind:/data
```
To spin up the container i run

```
$ docker-compose up -d
```
