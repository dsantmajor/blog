+++
Categories = ["Development","GoLang"]
Description = ""
Tags = ["Development","golang"]
date = "2017-05-25T16:26:25+10:00"
menu = "main"
title = "Starting with docker"

+++
[Home](http://localhost:1313/)

### <span style="color:blue"> **Important Links** </span>

<span style="color:blue">some **This is Blue italic.** text</span>

<span style="color:red"> **This is Red Bold.** </span>

## Docker Networking 1.1

#### Networks and Scopes

What is a Network in the docker world ?

Broadly speaking a Network is a private network ,can also regard it as a domain that allows containers to connect and  communicate with each other

If you connect a container to a network ,you give that container access to all the containers in that network.
FUNCTIONS
 - Intercommunication between a group of containers that belong to the same network, and also
 - provides isolation for these containers from containers that are not part of the same network

What about port mappings rules ?

How to connect to external networks ?


Every Network is backed by a driver

By default docker ships with bridge and overlay drivers
```
$ docker info
Output truncated....

Plugins:
 Volume: local
 Network: bridge host ipvlan macvlan null overlay

 ```
#### Networks are scoped as local or Global

Network scopes
Local scope - only visible to that particular engine
Global scope - visible to all the docker engines that are part of the cluster

how to define the scope ?
if the driver is global scope ,while you create a network ,the scope is negotiated

bridge driver is local scope driver
overlay is global scope driver ,the network using this driver will have a global scope

### how to create a docker Network

```
$ docker network create

Usage:	docker network create [OPTIONS] NETWORK

Create a network

Options:
      --attachable             Enable manual container attachment
      --aux-address map        Auxiliary IPv4 or IPv6 addresses used by Network driver (default map[])
  -d, --driver string          Driver to manage the Network (default "bridge")
      --gateway stringSlice    IPv4 or IPv6 Gateway for the master subnet
      --help                   Print usage
      --internal               Restrict external access to the network
      --ip-range stringSlice   Allocate container ip from a sub-range
      --ipam-driver string     IP Address Management Driver (default "default")
      --ipam-opt map           Set IPAM driver specific options (default map[])
      --ipv6                   Enable IPv6 networking
      --label list             Set metadata on a network (default [])
  -o, --opt map                Set driver specific options (default map[])
      --subnet stringSlice     Subnet in CIDR format that represents a network segment
```

EXAMPLE


```
# docker networ create test-network

NETWORK ID          NAME                 DRIVER              SCOPE
e07b557bedf8        bridge               bridge              local

eb3dacf83b45        test-network         bridge              local
```

### Bridge Driver details

```

 C1      C2                         C4
  \      |                         /
   \     |                        /
   ---------                     -------------
  | Docker0 |  <------X-------> | Some Network|
   ---------                     -------------
      |
      |
      C3
```
In the above example the only way for c1 to c4 is via the host namespace and port mappings ,exposed ports from docker0 network ,by default all networks are private ,you can give access by exposing ports .


### Multi-host networking
Docker engines that point to a KV store they are all part of the same cluster

How to form topology ?

Below we will create a network toplogy that has 3 network segements as show in the diagram below

- red
- pink
- purple



```
                        ------------------------------
                        |   KV store (backed by libkv)|
                        |   consul ,etc, zookeeper    |
                        -------------------------------
                            |          |          |
             _______________|          |          |______
            /                          |                 \
   -------------                ---------------       -------------
  | Red Network |  <---->      |Purple Network |     | Blue Network|
  |             |              |               |     |             |
  | C1   C3     |              |  [C4]    [C5] |     | C7     (C8) |
  |    C2       |              |      [C6]     |     |     C9      |
   -------------                 ---------------      -------------
      |
      |
      C3
```
C7 is connected to both red ,pink
C7 can act as


Scope is chosen based on negotiated driver scope







### Important Links

#### DockerCon 2017 all video links

https://blog.docker.com/2017/05/dockercon-2017-session-videos-now-live/

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
