<h3 align="center"> TRABAJO PRÁCTICO FINAL DE ENTORNOS DE PROGRAMACIÓN</h3>

---
<h4 align="center"> Tecnicatura Universitaria en Inteligencia Artificial</h4>
<h4 align="center"> FCEIA - UNR </h4>


<h4 align="center"> Bash Scripting - Git - Docker</h4>

Autora: [Bianca Di Biaggio](https://github.com/biancadibiaggio/tpfinalbian/) 

## ¿En qué consiste el trabajo?

El trabajo consiste en generar un contenedor que al ejecutarse presente un menú de
opciones de filtrados de un texto dado.

## ¿Cómo se procedió?

En primera instancia, se resolvieron los 5 ejercicios dados con el lenguaje de programación Bash, bajo una distribucion del sistema opertivo Linux, en este caso Ubuntu.

Luego, se utilizó la plataforma Github para alojar el repositorio remoto, y por último, se generó un Dockerfile. En este se indicaron ciertas instrucciones para que se genere la imagen que al ejecutarse genera un contenedor donde funcionan los scripts.

En efecto, al ejecutar el contenedor se muestra un menú con distintas opciones para poder analizar el texto.

## GIT

En este repositorio se encuentran almacenados los scripts de análisis de texto así como también el script del menu. También se incluye el README.md y el Dockerfile.

Para guardar algún archivo en el repositorio creado en GIT, se ejecutan los siguientes comandos:

- ***git add Archivo***
- ***git commit***
- ***git push***

Al ejecutar el último comando, la terminal solicita el username de GIT y el token del repositorio.

## DOCKER

Comandos Docker para ejecutar el contenedor:

¬ El comando build crea la imagen tp con el tag 1.0 .:

- ***docker build --tag tpfinalbian:1.0 .***

¬ Luego se ejecuta:

- ***docker images***

¬ Para corroborar que la imagen se creó correctamente.
¬ Para ejecutar el contenedor se utiliza el comando run:

- ***docker run -it tpfinalbian:1.0***

¬ Si todo funciona perfectamente, debería ejecutarse el menu.sh.

Por otro lado, para levantar el contenedor en otro equipo, lo ideal es crear una carpeta donde clonar el repsitorio git. Para esto hacemos:

- *** mkdir carpeta_prueba ***

- *** cd carpeta_prueba ***

Ahora sí, clonamos el repositorio:

- *** git clone https://github.com/biancadibiaggio/tpfinalbian ***

Posteriormente se accede a la carpeta clonada:

- *** cd tpfinalbian ***

Y una vez dentro, ahí sí podemos crear la imagen y correr el contenedor con los comandos antes mencionados.


## SCRIPTS

A partir de un archivo de texto "texto.txt" este programa tiene distintas opciones:

1. **Salir:** 

Sale de la aplicación.

2. **1statsWords.sh:**

Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud).

3. **2statsUsageWords.sh:**

Indicador estadístico de uso de palabras de al menos 4 letras. Muestra un Top Ten de estas palabras ordenadas desde la que tiene más apariciones a la que tiene menos.

4. **3findNames.sh:**

Identificación de nombres propios (se identifican sólo si están en este formato nnnnnnnn), aunque la palabra no sea un nombre propio realmente.
Ejemplos: Mateo, Estonoesunnombre, Ana.

5. **4statsSentences.sh:**

Indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud).

6. **5blankLinesCounter.sh:**

Contador de líneas en blanco.

