FROM python:3.13

RUN pip install --user hy cherrypy

WORKDIR /app
COPY hyserve.hy.scm /app 
COPY factorial.hy.scm /app 

#CMD ["python", "-m", "http.server"]
CMD ["/root/.local/bin/hy", "hyserve.hy.scm"]
