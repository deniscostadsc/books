.DEFAULT: run
.PHONY: \
	__build \
	__docker-stop
	run

__build:
	docker build -q -t learning-sql .

__docker-stop:
	docker stop $$(docker ps | grep learning-sql | awk '{ print $$1 }')

run: __docker-stop __build
	docker run -dt -p 3306 -v $$(pwd)/:/code learning-sql -u "$$(id -u):$$(id -g)"
	docker exec -it $$(docker ps | grep learning-sql | awk '{ print $$1 }') bash
