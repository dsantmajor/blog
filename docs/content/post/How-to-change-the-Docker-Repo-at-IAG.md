+++
date = "2017-06-15T01:24:02Z"
title = "How to change the Docker Repo at IAG"
menu = "main"
Categories = ["Development","GoLang"]
Tags = ["Development","golang"]
Description = ""

+++

### How to change Docker Repo from art2.auiag.corp to swrepos.auiag.corp

1. Checkout the Repo where you want to change the Docker Repo entries
2. You can find art2.auiag.corp and replace with swrepos.auiag.corp
3. We will take Wilma as an example
There are 4 locations where the files change

- application.conf
- Dockerfile
- rancher-dev.conf
- rancher-production.conf

4. Closer look at application.conf

```
    export DOCKER_IMAGE_BASE="art2.auiag.corp/nodeapp:0.0.17"
    export DOCKER_IMAGE_NAME="art2.auiag.corp/wilma"
    export DOCKER_IMAGE_BASE="swrepos.auiag.corp/carbon/nodeapp:0.1.2"
    export DOCKER_IMAGE_NAME="swrepos.auiag.corp/dce/wilma"

```
5. Closer look at Dockerfile

```
FROM art2.auiag.corp/nodeapp:0.0.17
FROM swrepos.auiag.corp/carbon/nodeapp:0.1.2

```
6. Closer look at rancher-dev.conf

```
DOCKER_IMAGE_NAME=art2.auiag.corp/wilma
DOCKER_IMAGE_NAME=swrepos.auiag.corp/dce/wilma

```

7. Closer look at rancher-production.conf

```
DOCKER_IMAGE_NAME=art2.auiag.corp/wilma
DOCKER_IMAGE_NAME=swrepos.auiag.corp/dce/wilma

```
8. Once all the changes have been made commit it to the remote repo.Preferably via a pull request.
9. Test the changes work.
