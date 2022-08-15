#! /bin/bash
# Reto 02 - Docker

docker run --name bbdd \
--env MARIADB_ROOT_PASSWORD=root \
--env MARIADB_DATABASE=prueba \
--env MARIADB_USER=invitado \
--env MARIADB_PASSWORD=invitado \
mariadb --port 3306