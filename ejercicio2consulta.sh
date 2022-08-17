#!/bin/bash

FILE=$1
( cat $FILE | tr -d '()[],.') > palabras.txt
cat palabras.txt
( grep -o -E '\w+' palabras.txt | sort -u -f ) > palabra.txt

for palabra in $(cat palabra.txt)
do
        if [ ${#palabra} -gt 4 ]
        then
                echo $palabra $( grep -oi $palabra palabras.txt | wc -l)
        fi
done
rm palabras.txt
rm palabra.txt
