# 🐳Docker 

Material para el curso de CodelyTV Pro [https://pro.codely.tv/library/](https://pro.codely.tv/library/).

## Comandos basicos

```docker
# docker run (Ejecuta docker)
	-it (Añadiendo -it es el comando “interactivo” es para que se puedan seguir mandando comandos al contenedor levantado)

# docker start -i <idContenedor>
	-i (interactivo y poder mandar comandos)

# docker ps (Para ver los contenedores levantados)
	-a (muestra tambien los contenedores parados con `doker stop`)

# docker logs <idContenedor> (Comando para ver todos los logs de ese container)
	-f ("follow", te hace un seguimiento de los logs)

# docker stop <idContenedor> (para parar el contenedor)

# docker rm <idContenedor> (para eliminar el contenedor)

# docker images (muestra las imagenes que existen en tu sistema)
```

## 0 - **Introducción a Docker**

### ¿Que es Docker?

Docker es un proyecto de código abierto que automatiza el despliegue de aplicaciones dentro de contenedores de software, proporcionando una capa adicional de abstracción y automatización de virtualización de aplicaciones en múltiples sistemas

Se encuentra basado en 2 tecnologías

- CGroups
- Namespaces

### CGroups

Los CGroups nos permiten limitar la cantidad de recursos (cpu, memoria, etc) que un proceso puede utilizar, en caso de que esta se exceda el proceso será terminado.

### Namespaces

Los namespaces permiten controlar qué puede ver un proceso dentro del sistema, como el listado de procesos o el file system.

## 1 - **Primeros pasos con Docker**

Los contenedores y las imágenes de las que derivan son muy parecidos teóricamente a lo que es un objeto y una clase.

Cuando nosotros creamos un contenedor tenemos que decirle que desde que tipo de imagen queremos crear el contenedor

## 2 - **Dockerfile**

Todos los Dockerfiles provienen de imágenes, las cuales podemos encontrar en el sitio oficial:

[Php - Official Image | Docker Hub](https://hub.docker.com/_/php?tab=description)

- Ejemplo de la documentación de un Dockerfile

  ```docker
  FROM busybox
  ENV FOO=/bar
  WORKDIR ${FOO}   # WORKDIR /bar
  ADD . $FOO       # ADD . /bar
  COPY \$FOO /quux # COPY $FOO /quux
  ```

Documentación sobre el **Formato y reglas de los Dockerfiles**

[Dockerfile reference](https://docs.docker.com/engine/reference/builder/)

- Existen las siguientes **variables de entorno**:

  `ADD`

  `COPY`

  `ENV`

  `EXPOSE`

  `FROM`

  `LABEL`

  `STOPSIGNAL`

  `USER`

  `VOLUME`

  `WORKDIR`

  `ONBUILD`
