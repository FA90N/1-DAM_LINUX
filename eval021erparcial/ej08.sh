#!/bin/bash

rm correctas.txt 2>/dev/null
rm incorrectas.txt 2>/dev/null

until [ "$pal" == "fin" ]
do
	read -p "Dime una palabra: " pal
	
	r=$(echo $pal | aspell list)
	
	if [ "$pal" != "fin" ]
	then
		if [ -z "$r" ]
		then
			echo "$pal" >> correctas.txt
		else
			echo "$pal" >> incorrectas.txt
		fi		
	fi

done

co=$(cat correctas.txt | wc -l)
in=$(cat incorrectas.txt | wc -l)

echo "Hay $co palabras correctas y $in incorrectas"
