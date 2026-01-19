# Hython Docker

🐍🦑Import Python. Write in LISP. Credit due to [`hylang`](https://hylang.org/); now container ready🦑🐍

This LISP Container which extends the python universe is an ethical and aesthetic return to the tradition of LISP. Though Scheme would be ideal in keeping with the traditions of the Structure and Interpretation of Computer Programs, for now the existing tool landscape makes use of another dialect of the language.

The container is barebones but provides a basic http server

```Scheme
(import cherrypy)

(defclass HelloWorld []
  (defn [cherrypy.expose] index [self]
    "Hello World!"))

(cherrypy.config.update {"server.socket_host" "0.0.0.0"})
(cherrypy.quickstart (HelloWorld))
```

To use as a dev environment
```bash
make dbash
/root/.local/bin/hy factorial.hy.scm #run lisp
$PKG install $EDITOR
$EDIT factorial.hy.scm
```

Adapted from Scheme:
```Scheme
;Design and Interpretation of Computer Programs 
;Ch5 Exercise 5.1 pg 672 
;ported from scheme to hy python
;rules noticed
;define -> defn
;(funcname param param) -> funcname [param param]

(defn factorial [n]
  (defn iter [product counter]
    (if (> counter n)
      product
      (iter (* counter product)
        (+ counter 1))))
  (iter 1 1))

(print(factorial 3))
(print(factorial 5))
```

### Acknowledgments 

This container would not work without the project hy, and effort to embed a dialect of LISP in python which was carried out by [Kodi Arfer](https://github.com/Kodiologist), with the repo found [here](https://github.com/hylang/hy)

Documentation on hy [here](https://hylang.org/hy/doc/v1.2.0/tutorial)

Useful table from tutorial:

| Hy | Python | Type |
| ---- | ---- | ---- | 
| 1 | 1 | int |
| 1.2 | 1.2 | float |
| 4j | 4j | complex |
| True | True | bool |
| None | None | NoneType |
| "hy" | 'hy' | str |
| b"hy" | b'hy' | bytes |
| #(1 2 3) | (1, 2, 3) | tuple |
| [1 2 3] | [1, 2, 3] | list |
| #{1 2 3} | {1, 2, 3} | set |
| {1 2  3 4} | {1: 2, 3: 4} | dict |

