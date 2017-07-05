+++
date = "2017-06-07T02:00:05Z"
title = "Getting started with Rancher"
menu = "main"
Categories = ["Development","GoLang"]
Tags = ["Development","golang"]
Description = ""

+++

### **Rancher Concepts**
#### **Table of Contents**
 1. Access Control
 2. Environments
 3. Services
 4.
[_Link_ : _Read this for Crossreference_] (https://gohugo.io/extras/crossreferences/)

    ----------
   | Registry |
    -----------
                     -------------ENVIRONMENT ---------------
                    |                                       |
                    |      ----------HOST(s)------------    |
                    |     |                             |   |
                    |     |    --------STACK(s)------   |   |
                    |     |  |    ---Container(s)--  |  |   |
                    |     |  |   |                 | |  |   |

#### Access Control

```
- Rancher UI access control : Admin --> Accounts --> Add Account
- Rancher Environment control : Manage Environment -->Add Environment--> Access Control

```
#### Environments
##### What is an Environment ?
Environment is ranchers way of grouping of resources ,these resources can be the services ,infrastructure components and the likes .Its a form of isolation and granular access control .You can create various environments for example you may want to create a Dev , Test and Prod Environment .Where all your Development work is carried our on the Dev Environment..etc..
##### How to create an Environment

```
Manage Environment --> Add Environment -->
  --> Name :    Description:
  --> Choose a Environment Template
  --> Give Access to users ( Access Control)

```
##### Issues or Limitations in Environment
- Cant migrate host to new Environment
- Cant share host betwen Environments [Link ](https://github.com/rancher/rancher/issues/583)

#### Service
##### What is a service ?
A service is a group of containers built from the the same docker image and linked using ranchers light weight DNS discovery services for service discovery.

##### What are the builtin-services ?
Rancher built-in services such as
- load balancers,
- health monitoring,
- upgrade support, &&
- high availability
