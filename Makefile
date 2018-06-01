all: build clean

.PHONY: build
build:
	docker-compose build

.PHONY: clean
clean:
	@echo "\033[0;32mDelete all untagged/dangling (<none>) images...\033[0m"
	docker rmi `docker images -q -f dangling=true`

.PHONY: up
up:
	docker-compose up

.PHONY: down
down:
	docker-compose down
