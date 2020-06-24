FROM mysql:5.7.22

# create schema
COPY ./scripts/create.sql /docker-entrypoint-initdb.d/
# insert data
COPY ./scripts/data.sql /docker-entrypoint-initdb.d/