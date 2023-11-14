#!/bin/bash

for linea in $(cat /etc/passwd)
do
	luid=$(echo $linea | cut -d":" -f3)
	lgid=$(echo $linea | cut -d":" -f4)
	nom=$(echo $linea | cut -d":" -f1)
	
	if [ "$luid" == "$lgid" ]
	then
		echo $nom
	fi
done
