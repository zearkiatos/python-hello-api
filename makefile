docker-build:
	docker build . -t=$(CONTAINER_NAME)

docker-run:
	docker run -it -p=8000:8000 $(CONTAINER_NAME)

docker-up:
	make docker-build CONTAINER_NAME=python-hello-api
	make docker-run CONTAINER_NAME=python-hello-api

docker-down:
	docker stop python-hello-api
	sleep 2
	docker rm python-hello-api