+++
Categories = ["Development","GoLang"]
Description = ""
Tags = ["Development","golang"]
date = "2017-05-25T16:31:24+10:00"
menu = "main"
title = "Building a Hugo container"

+++

## Installation on Mac

I installed Hugo on mac using brew
<!-- ```javascript
brew update
brew install hugo
```bash -->

```bash
#!
$ brew update
$ brew install hugo
```

## Setup a Hugo Site under 2 mins

I followed the tutorial on the Hugo site

```bash

$ cd ~/site
$ hugo new site .
$ hugo new post/welcome.md
$ git clone https://github.com/SenjinDarashiva/hugo-uno.git themes/hugo-uno
$ hugo server -w
$ hugo new post/'Starting with docker'.md
$ hugo new post/'Building a Hugo container'.md

```
The above created few folder structuer as below

```bash

.
├── archetypes
├── config.toml
├── content
│   └── post
├── data
├── layouts
├── static
└── themes
    ├── hugo-theme-docdock
    └── hugo-uno
```

## Creating a hugo docker image

I chose to use apline and few apk commands

**Sites used to build the docker-compose**

- [Docker-compose] (https://docs.docker.com/compose/compose-file/#build "BUILD")
- [MarkDown Cheat Sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Here-Cheatsheet "Cheat Sheet")
- [Jojo Jims references ](https://github.com/jojomi/docker-hugo)
- [ Referenced publyshers dockerfile ](https://hub.docker.com/r/publysher/hugo/~/dockerfile/)
- https://docs.docker.com/compose/compose-file/#build

## TODO
- externalise ENV paramaters
- introduce NGNIX reverse proxy [Jason Wilder's Repo ](https://github.com/jwilder/nginx-proxy)
- [automated-nginx-reverse-proxy-for-docker](http://jasonwilder.com/blog/2014/03/25/automated-nginx-reverse-proxy-for-docker/)
