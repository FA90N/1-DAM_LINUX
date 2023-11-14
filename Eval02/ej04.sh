#!/bin/bash

rm resultado.txt 2>/dev/null
for linea in $(cat operaciones.txt)
do
	num1=$(echo $linea | cut -d"," -f1)
	num2=$(echo $linea | cut -d"," -f3)
	ope=$(echo $linea | cut -d"," -f2)
		result=0
		case $ope in
			
			"por")
				let resul=$num1*$num2
				echo "$num1 x $num2 = $resul" >> resultado.txt
			;;
			"dividido")
				let resul=$num1/$num2
				echo "$num1 / $num2 = $resul" >> resultado.txt
			;;
			"más")
				let resul=$num1+$num2
				echo "$num1 + $num2 = $resul" >> resultado.txt
			;;
			"menos")
				let resul=$num1-$num2
				echo "$num1 - $num2 = $resul" >> resultado.txt
			;;
			
		esac

done
