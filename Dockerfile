FROM ubuntu:latest ##indica la imagen base que va a utilizar para seguir futuras instrucciones
MAINTAINER Bianca Di Biaggio #nos permite indicar el nombre del autor

COPY . /TP ##Copy idica que queremos agarrar todos los archvios del directorio actual (.) y trasladarlos al directorio ./app de la imagen
WORKDIR /TP ##indica el directorio sobre el que se van a aplicar las intrucciones siguientes
RUN chmod +x *.sh ##Se usa para correr un comando
ENTRYPOINT ./menu.sh ##Se usa para establecer los ejecutables que se ejecutaran siempre que se inicie el contenedor


