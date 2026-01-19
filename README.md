# Hython Docker

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
