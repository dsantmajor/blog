+++
Categories = ["Development","GoLang"]
Tags = ["Development","golang"]
Description = ""
menu = "main"
date = "2017-06-16T07:42:20Z"
title = "Learning python"

+++

###  Table of Contents
1. Strings
2. Bytes
3. lists
4. Dict
5. Function arguments and return values
6. Value equlity vs identity


#### String :
Immutable sequences of unicode strings

#### Bytes :
 Immutable sequences of bytes ,raw binary data ,bytes constructor

- Indexing
- spliting


**How to use**

- var = b'some bytes'
- var = b "some bytes"

#### List:

- mutuable
- sequence of objects
- [a, b, c, d]
- heterogenous
- emty list b= []
- b.append()
- List("char")
- c = [ a,
        b,
        c,
        d, you can have a comma for readability
       ]


#### Dict:

- mutable mappings of keys and values
- how to create{k1: v1, k2: v2}
- no order

date = "2017-06-21T07:42:20Z"

#### Function arguments and return values

#### Value equlity vs identity

**Value** - is equivalent to "contents"
**Identity** - same obj

```
        -----------
q ---> | [4, 3, 2] |
        -----------

        -----------
p ---> | [4, 3, 2] |
        -----------
```

- In the above example , q and p have the same values but not the same identity ,lets check using id()
- Value comparision can be controlled programatically
- id() comparision is defined by the lanugage and we cant change that behaviour

**id()- deals with the obj ,not the reference**
