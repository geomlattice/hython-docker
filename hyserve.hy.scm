(import cherrypy)

(defclass HelloWorld []
  (defn [cherrypy.expose] index [self]
    "Hello World!"))

(cherrypy.config.update {"server.socket_host" "0.0.0.0"})
(cherrypy.quickstart (HelloWorld))
