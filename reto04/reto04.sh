#! /bin/bash
# Solucion Reto 04 - Docker
<< 'Ejercicio_1'
    Crear imagen de Apache

        Crea una imagen a partir de siguiente Dockerfile:
            #Imagen que voy a utilizar como base
            FROM httpd:alpine

            #Etiquetado
            LABEL maintainer="vjed.vjed@gmail.com"
            LABEL project="bootcamp"

            #Como metadato, indicamos que el contenedor utiliza e puerto 80
            EXPOSE 80

            #Modificaciones sobre la imagen que he utilizado como base, en este caso alpine
            COPY content/ /usr/local/apache2/htdocs/
        
        y el contenido de la carpeta content:

            content
            ├── index.html
            └── site.css
Ejercicio_1

 docker build -t simple-apache:new .

<< 'Ejercicio_2'
    Crear contenedor desde la nueva imagen

    Ejecutar tu nueva imagen El contenedor se debe llamar my_apache Debes usar el puerto 5050 
    de tu localhost para poder acceder a él. 
Ejercicio_2

 docker run -d --name my_apache -p 5050:80 simple-apache:new