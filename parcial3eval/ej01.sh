#!/bin/bash
rm resumen.txt 2>/dev/null
fichero=$(cat /dev/stdin)
cont=0
for linea in $(cat $fichero)
do
		pro=$(echo $linea | cut -d"," -f1)
		ciu=$(echo $linea | cut -d"," -f2)
		var=$(echo $linea | cut -d"," -f3)
		
		if [ "$ciu" == "$1" ]
		then
			echo "El producto $pro viene de la $ciu y es de la variedad $var" >> resumen.txt
			let cont++
		fi
	

done
echo " " >> resumen.txt
echo "Hemos encontrado $cont productos" en $1 >> resumen.txt


