dcompose:
	sudo docker compose up

dbash:
	sudo docker exec -it hython-docker-web-1 bash

dclean:
	sudo docker rm hython-docker-web-1
	sudo docker rmi hython-docker-web
