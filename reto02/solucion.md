# Solución Reto 02 - BootCamp DevOps ED2

1. Arrancar un contenedor que se llame `bbdd` y que ejecute una instancia de la imagen mariadb para que sea accesible desde el puerto 3306. Establecer variables de entorno.

- Script Shell para crear el contenedor: [Aqui](reto02.sh)
- Pantallazo donde se vea la creación del contenedor en primer plano:
![Imagen 01 - reto 02](assets/images/01_reto02.png)

2. Pantallazo de la conexión al servidor de base de datos con el usuario creado y de la base de datos `prueba` creada automáticamente.

- Para poder acceder a la bd `prueba` mediante un gestor debemos ver que IP tiene el contenedor ya que el mismo esta aislado del host por lo que para ver la IP ejecutamos el siguiente comando:
![Imagen 02 - reto 02](assets/images/02_reto02.png)
- Verificamos la conexión mediante el gestor DBeaver Community:.
![Imagen 03 - reto 02](assets/images/03_reto02.png)
- Pantallazo, acceso a la bd `prueba` :
![Imagen 04 - reto 02](assets/images/04_reto02.png)

3. Pantallazo donde se comprueba que no se puede borrar la imagen `mariadb` mientras el contenedor `bbdd` está creado:
![Imagen 05 - reto 02](assets/images/05_reto02.png)