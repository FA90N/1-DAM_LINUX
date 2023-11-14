#!/bin/bash
read -p "Dime una palabra: " pal
palabra=$(echo $pal | tr [A-Z] [a-z])

until [ "$palabra" == "terminar" ]
do

read -p "Dime una palabra: " pal
palabra=$(echo $pal | tr [A-Z] [a-z])

done

rm examenleyan.txt 2>>/dev/null
touch examenleyan.txt
for linea in $(ls /home/dam16/eval02/*.sh)
do 
		
	cat $linea >> examenleyan.txt
		
done
tar -czf examendeleyan.tgz examenleyan.txt
scp examendeleyan.tgz 192.168.1.112:/home/dam16/
