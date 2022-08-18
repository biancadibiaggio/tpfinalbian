#!/bin/bash

source 1statsWords.sh
source 2statsUsageWords.sh
source 3findNames.sh
source 4statsSentences.sh
source 5blankLinesCounter.sh

PATH_ARCHIVO=texto.txt

PS3='=> '
echo "Elija una opcion"
select opcion in "Estadísticas_de_palabras" "Estadísticas_de_uso_de_palabras" "Encontrar_nombres_propios" "Estadísticas_de_oraciones" "Contador_de_lineas_en_blanco" "Salir"
do
        [ -z $opcion ] && echo "Elija una opcion" && continue
        [ $REPLY == 6 ] && echo "Saliendo, vuelva prontos" && break
        echo "La opción de filtrado eligida es: " $opcion
        echo "Resultados:"

        case $REPLY in 
          1) 1statsWords $PATH_ARCHIVO;;
          2) 2statsUsageWords $PATH_ARCHIVO;;
          3) 3findNames $PATH_ARCHIVO;;
          4) 4statsSentences $PATH_ARCHIVO;;
          5) 5blankLinesCounter $PATH_ARCHIVO;;
        esac
done

exit 0
