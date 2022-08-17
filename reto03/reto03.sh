#! /bin/bash
<< 'Enunciado'
  Reto 03 - Docker
  Crea un contenedor con las siguientes especificaciones:
  a. Utilizar la imagen base NGINX haciendo uso de la version nginx:alpine
  b. Al acceder a la URL localhost:8080/index.html aparecer el mensaje HOMEWORK 1
  c. Persistir el fichero index.html en un volumen llamado static_content
Enunciado

<< 'Paso_1'
    Crear el fichero Dockerfile. Las instrucciones que se han utilizado para el fichero son:
	  - Utilizar la imagen de nginx con la version requerida
	      FROM nginx:alpine	
	  - Copiar el archivo index.htm de la carpeta src desde el host a la carpeta del contenedor
	      COPY /src/index.html /usr/share/nginx/html
Paso_1
cd reto03
echo -e "FROM nginx:alpine \nCOPY /src/index.html /usr/share/nginx/html" >> Dockerfile

<< 'Paso_2'
    Crear un volumen 'static_content' en el CLI de Docker mediante la siguiente instruccion:
Paso_2

docker volume create static_content

<< 'Paso_3'
    Construir la imagen del contenedor. El nombre de la imagen es 'bootcamp_nginx'
Paso_3

docker build -t bootcamp_nginx .

<< 'Paso_4'
    Crear el contenedor con nombre 'bootcamp_container' utilizando la imagen construida en el paso 3
    Mediante el parametro -v hacemos que el volumen 'static_content' creado en el paso 2 apunte al 
    directorio del contenedor donde se encuentra el archivo index.html. De esta forma persistimos 
    todo el contenido del directorio /usr/share/nginx/html del contenedor en el volumen
Paso_4

docker run -d --name bootcamp_container -v static_content:/usr/share/nginx/html -p 8080:80 bootcamp_nginx

<< 'Paso_5'
    Acceder a la URL http://localhost:8080/index.html y comprobar que aparece la pagina deseada
Paso_5

<< 'Paso_6'
    Deploy to Registry DockerHub
     - Login
     - Tagear la imagen
     - Push en el registry
Paso_6

cat password.txt | docker login --username dariovjed --password-stdin
docker tag bootcamp_nginx dariovjed/bootcamp_nginx:v1.0.0
docker push dariovjed/bootcamp_nginx:v1.0.0
