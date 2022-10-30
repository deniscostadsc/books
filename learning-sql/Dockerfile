FROM mariadb:10

ENV MARIADB_ROOT_PASSWORD 123456

RUN mkdir /code
WORKDIR /code

COPY src/populate-database.sql /docker-entrypoint-initdb.d/
