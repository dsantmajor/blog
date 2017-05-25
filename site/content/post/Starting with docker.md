+++
Categories = ["Development","GoLang"]
Description = ""
Tags = ["Development","golang"]
date = "2017-05-25T16:26:25+10:00"
menu = "main"
title = "Starting with docker"

+++

## Docker Networking

Docker in 1.2 has introduced some awesome features

Commands

docker network

#### ERRORS
If you get the below error

> Error when trying to run docker-compose up. "oci runtime error:
> container_linux.go:247..." #4039

you can solve it by applying the chmod +x ,i.e making it executable

##### Solution
```bash
# RUN chmod +x startup.sh
```
