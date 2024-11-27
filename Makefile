IMAGE_NAME=web
CONTAINER_NAME=web
PORT=8080

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -d --name $(CONTAINER_NAME) -p $(PORT):80 $(IMAGE_NAME)

stop:
	docker stop $(CONTAINER_NAME) && docker rm $(CONTAINER_NAME)

clean:
	docker rmi $(IMAGE_NAME)

restart: stop build run

