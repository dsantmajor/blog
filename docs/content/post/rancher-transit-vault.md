+++
Tags = ["Development","golang"]
Description = ""
date = "2017-06-22T23:31:05Z"
title = "Rancher Transit Vault"
menu = "main"
Categories = ["Development","GoLang"]

+++

### Table of Contents
1. Seal
2. Unseal



#### Seal :
What is Sealed State ?
In this state Vault knows where and how to access physical storage ,but doesnt
know how to dycrypt any of it.

#### Unsealing :
What is Unsealing?
Unsealing is the process of reconstructing (constructing) the master key
- without unsealing no operations are possible within the vault ,except unsealing and checking unseal status
- the master key is neccessary for
     - reading the dycrption key
     - to dycrypt data
     - and allowing access to the Vault
     - Shamirs Secret Sharing algorithm is used

      To decrypt DATA       -------------------------------
Vault --Encryption Key---> |  DATA + Encryption Key(EK)     |
            (needs)        | (EK:Encrypted with another     |
                           |  encryption key (master key))  |
                            -------------------------------
