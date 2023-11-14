#!/bin/bash

rm correctas.txt 2>/dev/null
rm incorrectas.txt 2>/dev/null

for linea in $(cat palabras.txt)
do
	

	respuesta=$(echo $linea | aspell list)

	if [ -z $respuesta ]
	then

		echo "$linea" >> correctas.txt
	else
		
		echo "$linea" >> incorrectas.txt
		
	fi
	

done

correctas=$(cat correctas.txt | wc -l)
echo "Palabras correctas: $correctas"

incorrectas=$(cat incorrectas.txt | wc -l)
echo "Palabras incorrectas: $incorrectas"

