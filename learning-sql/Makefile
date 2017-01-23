.DEFAULT: build

clean:
	docker rm -f $(docker ps -a -q);
	docker rmi -f $(docker images -q)

build:
	docker build -t learning-sql .

run:
	docker run -t -p 3306 -v src/:/dev learning-sql
