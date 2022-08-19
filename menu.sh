#!/bin/bash

source 1statsWords.sh
source 2statsUsageWords.sh
source 3findNames.sh
source 4statsSentences.sh
source 5blankLinesCounter.sh

TEXTO=texto.txt

PS3='>> '
echo "Elija una opción"
select opcion in "Palabras" "Uso_de_palabras" "Nombres" "Oraciones" "Lineas_en_blanco" "SALIR"
do
	[ -e $opcion ] && echo "Elija una opción válida" && continue
	[ $REPLY == 6 ] && echo "Hasta luego, vuelva prontos" && break
	echo "Usted esta viendo estadísticas sobre " $opcion
	
	case $REPLY in 
	  1) 1statsWords $TEXTO;;
	  2) 2statsUsageWords $TEXTO;;
	  3) 3findNames $TEXTO;;
	  4) 4statsSentences $TEXTO;;
	  5) 5blankLinesCounter $TEXTO;;
	esac
done

exit 0
