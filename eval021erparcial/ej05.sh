#!/bin/bash
rm examenleyan1.txt 2>>/dev/null
touch examenleyan1.txt

for linea in $(ls *.sh)
do 
	echo " "
	echo $linea
	echo " "
	echo "-------------------------------------------------"
	echo " "
	cat $linea 
		
done

